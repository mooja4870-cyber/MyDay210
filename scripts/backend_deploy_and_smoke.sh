#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKEND_DIR="${BACKEND_DIR:-$ROOT_DIR/../ilsang_mooja}"
BACKEND_BASE_URL="${BACKEND_BASE_URL:-https://ilsang-mooja-api-production.up.railway.app}"
BACKEND_BASE_URL="${BACKEND_BASE_URL%/}"
HEALTH_URL="$BACKEND_BASE_URL/api/health"
HEALTH_WAIT_TIMEOUT_SEC="${HEALTH_WAIT_TIMEOUT_SEC:-300}"
HEALTH_WAIT_INTERVAL_SEC="${HEALTH_WAIT_INTERVAL_SEC:-5}"
FORCE_BACKEND_DEPLOY="${FORCE_BACKEND_DEPLOY:-false}"

log() {
  echo "[BACKEND] $*"
}

fail() {
  echo "[BACKEND][ERROR] $*" >&2
  exit 1
}

normalize_bool() {
  local raw="${1:-}"
  raw="$(printf '%s' "$raw" | tr '[:upper:]' '[:lower:]')"
  [[ "$raw" == "1" || "$raw" == "true" || "$raw" == "yes" || "$raw" == "y" ]]
}

require_cmd() {
  local cmd="$1"
  command -v "$cmd" >/dev/null 2>&1 || fail "$cmd 명령을 찾지 못했습니다."
}

wait_for_health() {
  local started_at
  started_at="$(date +%s)"

  while true; do
    if curl -sS --max-time 15 "$HEALTH_URL" | node -e '
      const chunks = [];
      process.stdin.on("data", (c) => chunks.push(c));
      process.stdin.on("end", () => {
        try {
          const payload = JSON.parse(Buffer.concat(chunks).toString("utf8"));
          process.exit(payload && payload.ok === true ? 0 : 1);
        } catch {
          process.exit(1);
        }
      });
    '; then
      log "헬스 체크 통과: $HEALTH_URL"
      return 0
    fi

    if (( "$(date +%s)" - started_at >= HEALTH_WAIT_TIMEOUT_SEC )); then
      fail "지정 시간 안에 백엔드 헬스 체크가 회복되지 않았습니다."
    fi

    log "백엔드 헬스 체크 대기 중..."
    sleep "$HEALTH_WAIT_INTERVAL_SEC"
  done
}

main() {
  require_cmd curl
  require_cmd node
  require_cmd npx

  [[ -d "$BACKEND_DIR" ]] || fail "백엔드 디렉터리를 찾지 못했습니다: $BACKEND_DIR"

  local backend_dirty=""
  backend_dirty="$(git -C "$BACKEND_DIR" status --porcelain)"

  log "Railway 배포 대상 확인"
  (cd "$BACKEND_DIR" && npx @railway/cli status)

  if [[ -n "$backend_dirty" ]] || normalize_bool "$FORCE_BACKEND_DEPLOY"; then
    log "Railway에 현재 백엔드 코드를 배포합니다."
    (
      cd "$BACKEND_DIR"
      npx @railway/cli deployment up --ci --message "backend deploy before app harness"
    )
  else
    log "백엔드 변경사항이 없어 배포는 건너뜁니다."
  fi

  wait_for_health

  log "publish smoke test 실행"
  "$ROOT_DIR/scripts/backend_publish_smoke.sh"

  log "배포 + smoke gate 통과"
}

main "$@"

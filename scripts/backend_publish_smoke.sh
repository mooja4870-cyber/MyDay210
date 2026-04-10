#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BACKEND_BASE_URL="${BACKEND_BASE_URL:-https://ilsang-mooja-api-production.up.railway.app}"
BACKEND_BASE_URL="${BACKEND_BASE_URL%/}"
HEALTH_URL="$BACKEND_BASE_URL/api/health"
PUBLISH_SAMPLE_URL="$BACKEND_BASE_URL/api/publish-sample"
SMOKE_TIMEOUT_SEC="${SMOKE_TIMEOUT_SEC:-420}"
REQUIRE_SECONDARY_SMOKE="${REQUIRE_SECONDARY_SMOKE:-true}"

log() {
  echo "[SMOKE] $*"
}

fail() {
  echo "[SMOKE][ERROR] $*" >&2
  exit 1
}

require_cmd() {
  local cmd="$1"
  command -v "$cmd" >/dev/null 2>&1 || fail "$cmd 명령을 찾지 못했습니다."
}

normalize_bool() {
  local raw="${1:-}"
  raw="$(printf '%s' "$raw" | tr '[:upper:]' '[:lower:]')"
  [[ "$raw" == "1" || "$raw" == "true" || "$raw" == "yes" || "$raw" == "y" ]]
}

require_non_empty_env() {
  local name="$1"
  if [[ -z "${!name:-}" ]]; then
    fail "$name 환경변수가 필요합니다."
  fi
}

validate_health() {
  local response_file
  response_file="$(mktemp -t myday210_smoke_health)"
  trap 'rm -f "$response_file"' RETURN

  curl -sS --max-time 30 "$HEALTH_URL" >"$response_file"

  node - <<'NODE' "$response_file"
const fs = require("fs");
const payload = JSON.parse(fs.readFileSync(process.argv[2], "utf8"));
if (!payload || payload.ok !== true) {
  console.error("[SMOKE][ERROR] /api/health 응답이 비정상입니다.");
  process.exit(1);
}
NODE

  rm -f "$response_file"
  trap - RETURN
}

run_smoke_case() {
  local label="$1"
  local username="$2"
  local password="$3"
  local blog_id="$4"
  local forbidden_blog_id="${5:-}"
  local payload_file
  local response_file
  local http_code

  payload_file="$(mktemp -t myday210_smoke_payload)"
  response_file="$(mktemp -t myday210_smoke_response)"
  trap 'rm -f "$payload_file" "$response_file"' RETURN

  node - <<'NODE' "$payload_file" "$username" "$password" "$blog_id"
const fs = require("fs");
const [payloadPath, username, password, blogId] = process.argv.slice(2);
fs.writeFileSync(
  payloadPath,
  JSON.stringify(
    {
      credentials: { username, password, blogId },
    },
    null,
    2,
  ),
);
NODE

  log "$label 계정으로 /api/publish-sample 호출 중..."
  http_code="$(
    curl -sS \
      -o "$response_file" \
      -w '%{http_code}' \
      --max-time "$SMOKE_TIMEOUT_SEC" \
      -H 'Content-Type: application/json' \
      -X POST \
      --data-binary "@$payload_file" \
      "$PUBLISH_SAMPLE_URL"
  )"

  if [[ "$http_code" != "200" ]]; then
    node - <<'NODE' "$response_file" "$label" "$http_code"
const fs = require("fs");
const [responsePath, label, httpCode] = process.argv.slice(2);
const raw = fs.readFileSync(responsePath, "utf8");
let payload = null;
try {
  payload = JSON.parse(raw);
} catch {
  payload = null;
}
if (payload) {
  console.error(`[SMOKE][ERROR] ${label} 계정 smoke 실패 (HTTP ${httpCode})`);
  if (payload.reason) console.error(`[SMOKE][ERROR] reason=${payload.reason}`);
  if (payload.message) console.error(`[SMOKE][ERROR] message=${payload.message}`);
  if (payload.url) console.error(`[SMOKE][ERROR] url=${payload.url}`);
  if (payload.screenshotPath) console.error(`[SMOKE][ERROR] screenshotPath=${payload.screenshotPath}`);
  if (payload.tracePath) console.error(`[SMOKE][ERROR] tracePath=${payload.tracePath}`);
} else {
  console.error(`[SMOKE][ERROR] ${label} 계정 smoke 실패 (HTTP ${httpCode}) raw=${raw}`);
}
process.exit(1);
NODE
  fi

  node - <<'NODE' "$response_file" "$label" "$blog_id" "$forbidden_blog_id"
const fs = require("fs");
const [responsePath, label, expectedBlogIdRaw, forbiddenBlogIdRaw] = process.argv.slice(2);
const expectedBlogId = String(expectedBlogIdRaw || "").trim().toLowerCase();
const forbiddenBlogId = String(forbiddenBlogIdRaw || "").trim().toLowerCase();
const payload = JSON.parse(fs.readFileSync(responsePath, "utf8"));
const targetBlogId = String(payload?.targetBlogId || "").trim().toLowerCase();
const postUrl = String(payload?.url || "").trim().toLowerCase();

if (payload?.success !== true) {
  console.error(`[SMOKE][ERROR] ${label} 계정 smoke 응답 success=false`);
  if (payload?.reason) console.error(`[SMOKE][ERROR] reason=${payload.reason}`);
  if (payload?.message) console.error(`[SMOKE][ERROR] message=${payload.message}`);
  process.exit(1);
}

if (!targetBlogId || targetBlogId !== expectedBlogId) {
  console.error(
    `[SMOKE][ERROR] ${label} 계정 targetBlogId 불일치: expected=${expectedBlogId} actual=${targetBlogId || "(empty)"}`,
  );
  process.exit(1);
}

const matchesExpectedUrl =
  postUrl.includes(`blogid=${expectedBlogId}`) ||
  postUrl.includes(`blog.naver.com/${expectedBlogId}`);
if (!matchesExpectedUrl) {
  console.error(`[SMOKE][ERROR] ${label} 계정 발행 URL이 요청 블로그를 가리키지 않습니다: ${postUrl}`);
  process.exit(1);
}

if (forbiddenBlogId) {
  const leakedToForbidden =
    targetBlogId === forbiddenBlogId ||
    postUrl.includes(`blogid=${forbiddenBlogId}`) ||
    postUrl.includes(`blog.naver.com/${forbiddenBlogId}`);
  if (leakedToForbidden) {
    console.error(
      `[SMOKE][ERROR] ${label} 계정 발행 결과가 금지 블로그(${forbiddenBlogId})로 새어 나갔습니다: ${postUrl}`,
    );
    process.exit(1);
  }
}

console.log(`[SMOKE] ${label} 계정 smoke 통과: ${postUrl}`);
NODE

  rm -f "$payload_file" "$response_file"
  trap - RETURN
}

main() {
  require_cmd curl
  require_cmd node

  require_non_empty_env SMOKE_NAVER_USERNAME
  require_non_empty_env SMOKE_NAVER_PASSWORD
  require_non_empty_env SMOKE_NAVER_BLOG_ID

  local has_secondary="false"
  if [[ -n "${SMOKE_NAVER2_USERNAME:-}" || -n "${SMOKE_NAVER2_PASSWORD:-}" || -n "${SMOKE_NAVER2_BLOG_ID:-}" ]]; then
    has_secondary="true"
  fi

  if normalize_bool "$REQUIRE_SECONDARY_SMOKE"; then
    require_non_empty_env SMOKE_NAVER2_USERNAME
    require_non_empty_env SMOKE_NAVER2_PASSWORD
    require_non_empty_env SMOKE_NAVER2_BLOG_ID
    has_secondary="true"
  fi

  local primary_blog_id_normalized=""
  local secondary_blog_id_normalized=""
  primary_blog_id_normalized="$(printf '%s' "${SMOKE_NAVER_BLOG_ID}" | tr '[:upper:]' '[:lower:]')"
  secondary_blog_id_normalized="$(printf '%s' "${SMOKE_NAVER2_BLOG_ID:-__missing__}" | tr '[:upper:]' '[:lower:]')"

  if [[ "$primary_blog_id_normalized" == "$secondary_blog_id_normalized" ]]; then
    if [[ -n "${SMOKE_NAVER2_BLOG_ID:-}" ]]; then
      fail "1차/2차 smoke 블로그 아이디가 같으면 계정 누수 검증이 되지 않습니다."
    fi
  fi

  log "헬스 체크 확인: $HEALTH_URL"
  validate_health

  run_smoke_case "1차" \
    "${SMOKE_NAVER_USERNAME}" \
    "${SMOKE_NAVER_PASSWORD}" \
    "${SMOKE_NAVER_BLOG_ID}"

  if [[ "$has_secondary" == "true" ]]; then
    run_smoke_case "2차" \
      "${SMOKE_NAVER2_USERNAME}" \
      "${SMOKE_NAVER2_PASSWORD}" \
      "${SMOKE_NAVER2_BLOG_ID}" \
      "${SMOKE_NAVER_BLOG_ID}"
  fi

  log "모든 publish smoke test 통과"
}

main "$@"

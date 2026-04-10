#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APP_REMOTE="$(git -C "$ROOT_DIR" remote get-url origin 2>/dev/null || true)"
BACKEND_DIR="${BACKEND_DIR:-$ROOT_DIR/../ilsang_mooja}"
BACKEND_REMOTE="$(git -C "$BACKEND_DIR" remote get-url origin 2>/dev/null || true)"
BACKEND_BASE_URL="${BACKEND_BASE_URL:-https://ilsang-mooja-api-production.up.railway.app}"

echo "[CHECKLIST] App Repo      : ${APP_REMOTE:-"(unknown)"}"
echo "[CHECKLIST] Backend Repo  : ${BACKEND_REMOTE:-"(unknown)"}"
echo "[CHECKLIST] Backend URL   : ${BACKEND_BASE_URL%/}"
echo "[CHECKLIST] Release Path  : app build -> app push -> backend deploy -> backend smoke -> adb install -> app run"
echo "[CHECKLIST] Smoke Script  : $ROOT_DIR/scripts/backend_publish_smoke.sh"
echo "[CHECKLIST] Harness Gate  : $ROOT_DIR/scripts/backend_deploy_and_smoke.sh"
if [[ -d "$BACKEND_DIR" ]]; then
  echo "[CHECKLIST] Railway Link  :"
  (cd "$BACKEND_DIR" && npx @railway/cli status)
else
  echo "[CHECKLIST][ERROR] Backend dir missing: $BACKEND_DIR" >&2
  exit 1
fi

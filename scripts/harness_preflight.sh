#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

PACKAGE_NAME="com.mooja.myday210"
FORBIDDEN_PATTERN='MYDAY209|MYDAY20|com\.mooja\.myday209|com\.mooja\.myday20'

if [[ ! -f PROJECT_STATUS.md ]]; then
  echo "[ERROR] PROJECT_STATUS.md is missing"
  exit 1
fi

if ! command -v apktool >/dev/null 2>&1; then
  echo "[ERROR] apktool not found"
  exit 1
fi

if ! command -v adb >/dev/null 2>&1; then
  echo "[ERROR] adb not found"
  exit 1
fi

if ! command -v curl >/dev/null 2>&1; then
  echo "[ERROR] curl not found"
  exit 1
fi

if ! command -v node >/dev/null 2>&1; then
  echo "[ERROR] node not found"
  exit 1
fi

if ! command -v npx >/dev/null 2>&1; then
  echo "[ERROR] npx not found"
  exit 1
fi

if [[ ! -d "$ROOT_DIR/../ilsang_mooja" ]]; then
  echo "[ERROR] backend repo ../ilsang_mooja is missing"
  exit 1
fi

if ! rg -q "package=\"$PACKAGE_NAME\"" "$ROOT_DIR/app/AndroidManifest.xml"; then
  echo "[ERROR] AndroidManifest package must stay $PACKAGE_NAME"
  exit 1
fi

if ! rg -q "\"appId\": \"$PACKAGE_NAME\"" "$ROOT_DIR/app/assets/capacitor.config.json"; then
  echo "[ERROR] capacitor appId must stay $PACKAGE_NAME"
  exit 1
fi

if rg -n "$FORBIDDEN_PATTERN" \
  "$ROOT_DIR/app/AndroidManifest.xml" \
  "$ROOT_DIR/app/assets/capacitor.config.json" \
  "$ROOT_DIR/app/assets/public/index.html" \
  "$ROOT_DIR/app/assets/public/assets/referral-share.js" \
  "$ROOT_DIR/app/assets/public/assets/index-"*.js \
  "$ROOT_DIR/app/res/values/strings.xml"; then
  echo "[ERROR] forbidden MyDay209/MyDay20 identifiers detected in MyDay210 project"
  exit 1
fi

BUILD_TOOLS_DIR="${BUILD_TOOLS_DIR:-$HOME/Library/Android/sdk/build-tools/36.1.0}"
for t in zipalign apksigner; do
  if [[ ! -x "$BUILD_TOOLS_DIR/$t" ]]; then
    echo "[ERROR] $t not found in $BUILD_TOOLS_DIR"
    exit 1
  fi
done

echo "[OK] preflight passed"

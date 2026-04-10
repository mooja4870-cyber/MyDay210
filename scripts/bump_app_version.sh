#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

SMALI_PROJECT="${SMALI_PROJECT:-app}"
JS_FILE="$(ls "$SMALI_PROJECT"/assets/public/assets/index-*.js | head -n 1)"
CAP_CONFIG="$SMALI_PROJECT/assets/capacitor.config.json"
STRINGS_XML="$SMALI_PROJECT/res/values/strings.xml"

if [[ ! -f "$JS_FILE" || ! -f "$CAP_CONFIG" || ! -f "$STRINGS_XML" ]]; then
  echo "[ERROR] version target files are missing" >&2
  exit 1
fi

CURRENT_VERSION="$(perl -ne 'if (/"appName":\s*"MyDay210\\\\n([0-9]+\.[0-9]+)"/ || /"appName":\s*"MyDay\\\\n([0-9]+\.[0-9]+)"/) { print "$1\n"; exit }' "$CAP_CONFIG")"

if [[ -z "$CURRENT_VERSION" ]]; then
  echo "[ERROR] failed to detect current version" >&2
  exit 1
fi

IFS='.' read -r major minor <<< "$CURRENT_VERSION"
major="${major:-0}"
minor="${minor:-0}"
minor=$((10#$minor + 1))

NEXT_VERSION="${major}.${minor}"

NEXT_VERSION="$NEXT_VERSION" perl -0pi -e 's/(Ix="v )([0-9]+\.[0-9]+)(")/$1$ENV{NEXT_VERSION}$3/g' "$JS_FILE"
NEXT_VERSION="$NEXT_VERSION" perl -0pi -e 's/("appName": "MyDay210\\\\n)([0-9]+\.[0-9]+)(")/$1$ENV{NEXT_VERSION}$3/g; s/("appName": "MyDay\\\\n)([0-9]+\.[0-9]+)(")/$1$ENV{NEXT_VERSION}$3/g' "$CAP_CONFIG"
NEXT_VERSION="$NEXT_VERSION" perl -0pi -e 's{(<string name="app_name">).*?(</string>)}{$1MyDay210\\n$ENV{NEXT_VERSION}$2}s; s{(<string name="title_activity_main">).*?(</string>)}{$1MyDay210\\n$ENV{NEXT_VERSION}$2}s;' "$STRINGS_XML"

echo "$NEXT_VERSION"

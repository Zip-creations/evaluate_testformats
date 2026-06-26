#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

"$SCRIPT_DIR/vendor/bin/behat" --config "$SCRIPT_DIR/test/behat/behat.yml" --format=junit --out="$SCRIPT_DIR/out/behat/"

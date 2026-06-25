#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CODECEPTION_DIR="$SCRIPT_DIR/test/codeception"
CODECEPT="$SCRIPT_DIR/vendor/bin/codecept"

cd "$CODECEPTION_DIR"

mkdir -p tests/_output

"$CODECEPT" run Unit --html report_codeception_html.html

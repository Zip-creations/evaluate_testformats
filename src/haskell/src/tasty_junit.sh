#!/usr/bin/env bash
set -euo pipefail

mkdir -p build out

ghc test/tasty/test.hs -o build/tasty

./build/tasty --xml=out/report_tasty_ant_junit.xml

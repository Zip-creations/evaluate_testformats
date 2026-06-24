#!/usr/bin/env bash
set -euo pipefail

mkdir -p build out

ghc -itest/tasty test/tasty/Main.hs -o build/tasty

./build/tasty --xml=out/report_tasty_ant_junit.xml

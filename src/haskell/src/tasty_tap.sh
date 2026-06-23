#!/usr/bin/env bash
set -euo pipefail

mkdir -p build out

ghc test/tasty/test.hs -o build/tasty

./build/tasty > out/report_tasty.tap

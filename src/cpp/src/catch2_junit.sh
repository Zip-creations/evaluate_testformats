#!/usr/bin/env bash
set -euo pipefail

BINARY="./build/catch2_tests"

mkdir -p "./build" "./out"

g++ -std=c++17 ./test/catch2/*.cpp \
  -lCatch2Main -lCatch2 \
  -o "$BINARY"

"$BINARY" -r junit -o "./out/report_catch2_junit.xml"

#!/usr/bin/env bash
set -euo pipefail

BINARY="./build/doctest_tests"

mkdir -p "./build" "./out"

g++ -std=c++17 ./test/doctest/*.cpp \
  -o "$BINARY"

"$BINARY" --reporters=junit --out="./out/report_doctest_junit.xml"

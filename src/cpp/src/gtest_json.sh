#!/usr/bin/env bash
set -euo pipefail

BINARY="./build/build_tests"

mkdir -p "./build" "./out"

g++ -std=c++17 "./test"/*.cpp \
  -lgtest -lgtest_main -pthread \
  -o "$BINARY"

"$BINARY" --gtest_output="json:./out/report_gtest.json"

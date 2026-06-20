#!/usr/bin/env bash
set -euo pipefail

cmake -S . -B build
cmake --build build

./build/my_tests --gtest_output="xml:./out/report_gtest_junit.xml"
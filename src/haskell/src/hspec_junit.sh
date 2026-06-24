#!/usr/bin/env bash
set -euo pipefail

mkdir -p build out

ghc -itest/hspec test/hspec/Main.hs -o build/hspec_tests

./build/hspec_tests

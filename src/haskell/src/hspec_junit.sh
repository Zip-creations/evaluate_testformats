#!/usr/bin/env bash
set -euo pipefail

mkdir -p build out

ghc test/hspec/test.hs -o build/hspec_tests

./build/hspec_tests

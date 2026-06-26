#!/usr/bin/env bash

gradle test

mkdir -p out/junit5/gradle
cp build/test-results/test/TEST-*.xml out/junit5/gradle/
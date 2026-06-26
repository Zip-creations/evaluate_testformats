#!/usr/bin/env bash

gradle test


cp build/test-results/test/TEST-*.xml out/junit5/gradle/
cp -r build/reports/tests/test out/html/gradle
cp build/test-results/test-otr/junit-platform-events-*.xml out/otr/gradle/
#!/usr/bin/env bash

mvn test

cp target/surefire-reports/TEST-*.xml out/junit5/maven/
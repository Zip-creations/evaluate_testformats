#!/usr/bin/env bash

mvn test

mvn surefire-report:report-only

cp target/surefire-reports/TEST-*.xml out/junit5/maven/
cp target/reports/surefire.html out/html/maven
cp target/surefire-reports/junit-platform-events-*.xml out/otr/maven/
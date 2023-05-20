#!/bin/bash

# Run Super-Linter
docker run --rm \
  -e RUN_LOCAL=true \
  -e VALIDATE_ALL_CODEBASE=true \
  -e DEFAULT_BRANCH=develop \
  -v $(pwd):/tmp/lint \
  -w /tmp/lint \
  github/super-linter:v5.0.0

# Build the package using Maven
mvn package
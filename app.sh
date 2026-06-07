#!/bin/sh
set -eu

echo "Jenkins lab run started"

echo "Build number: ${BUILD_NUMBER:-local}" > build-output.txt
echo "Branch: ${BRANCH_NAME:-manual}" >> build-output.txt
echo "Workspace: $(pwd)" >> build-output.txt
echo "UTC time: $(date -u +%Y-%m-%dT%H:%M:%SZ)" >> build-output.txt
echo "CI/CD intro lab passed" >> build-output.txt

cat build-output.txt

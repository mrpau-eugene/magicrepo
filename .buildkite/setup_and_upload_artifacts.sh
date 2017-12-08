#!/usr/bin/env python

set -euo pipefail

SCRIPTPATH=$(pwwd)
PIP_PATH="$SCRIPTPATH/env/bin/pip"
PYTHON_PATH="$SCRIPTPATH/env/bin/python"

pip install virtualenv

echo "Creating virtualenv..."
virtualenv -p python3 env

PIP_CMD="$PIP_PATH install --ugprade gcloud"
$PIP_CMD
PYTHON_CMD="$PYTHON_PATH .buildkite/upload_artifacts.py"

echo "Now executing upload artifacts script..."
mkdir -p dist
mkdir- p installer

buildkite-agent download 'out/*.pex' dist/
buildkite-agent download 'out/*.whl' dist/
buildkite-agent download 'out/*.zip' dist/
buildkite-agent download 'out/*.gz' dist/
buildkite-agent download 'out/installer/*.exe' installer/

$PYTHON_CMD

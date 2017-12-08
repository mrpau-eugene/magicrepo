#!/usr/bin/env bash

set -euo pipefail

make dockerenvdist
buildkite-agent artifact upload 'out/dist/*.whl'
buildkite-agent artifact upload 'out/dist/*.zip'
buildkite-agent artifact upload 'out/dist/*.tar.gz'
buildkite-agent artifact upload 'out/dist/*.pex'
buildkite-agent artifact upload 'out/installer/*.exe'

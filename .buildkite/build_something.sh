#!/usr/bin/env bash

set -euo pipefail

make dockerenvdist
buildkite-agent artifact upload 'out/*.whl'
buildkite-agent artifact upload 'out/*.zip'
buildkite-agent artifact upload 'out/*.tar.gz'
buildkite-agent artifact upload 'out/*.pex'
buildkite-agent artifact upload 'out/installer/*.exe'

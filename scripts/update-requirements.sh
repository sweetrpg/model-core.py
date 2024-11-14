#!/bin/bash

set -e

scriptdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

pushd ${scriptdir}/..

for r in pkg dev docs tests; do
    echo "Requirement: $r"
    pip-compile -r -U requirements/$r.in
done

popd

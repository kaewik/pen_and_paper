#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
docker run --rm \
    --volume "$SCRIPT_DIR":/data \
    plantuml/plantuml:sha-74574c4@sha256:0b1fcb1ed16ec704d9c17fa66639723baa3b783b69e9a801f4a7eb090118080b \
    *.pu

#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

for script in "$SCRIPT_DIR"/*.sh; do
    # skip this script itself
    if [[ "$script" == "$0" || "$(basename "$script")" == "$(basename "$0")" ]]; then
        continue
    fi

    bash "$script"
done

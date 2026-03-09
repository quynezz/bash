#!/usr/bin/env bash

for dir in *; do
    if [ -d "$dir" ]; then
        lower_case_dir="$(echo "$dir" | tr "[:upper:]" "[:lower:]")"
        mv "$dir" "$lower_case_dir"
    fi
done

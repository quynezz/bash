#!/usr/bin/env bash

declare -A shells
while IFS=: read -r name pass uid gid gecos home shell; do
    # skip comments
    if [[ $name == '#'* ]]; then
        continue
    fi

    shells[$name]=$shell
done </etc/passwd

# declare -p shells | tr ' ' '\n' | sort -u | uniq -c
for shel in "${shells[@]}"; do
    echo "$shel" | sort -u | uniq -c
done

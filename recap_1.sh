#!/usr/bin/env bash

process-indexed() {
    local arguments=("$@")
    echo "found: ${#arguments[@]} arguments"

    local IFS=,
    echo "${arguments[*]}"
}

process-associative() {
    local arguments=("$@")
    echo "found: ${#arguments[@]} total arguments"

    declare -A unique
    for item in "${arguments[@]}"; do
        # Mark as visited
        unique[$item]=1
    done

    echo "found: ${#unique[@]} unique arguments"
}

process-commands() {
    local arguments=("$@")
    echo "found: ${#arguments[@]} total arguments"

    local item
    for item; do
        echo "running command: $item"
        "$item" # hmmm
    done
}

cmd=$1
echo "script called with arguments: $*"
shift
echo "script shifted to arguments: $*"

case "$cmd" in
indexed)
    process-indexed "$@"
    ;;

associative)
    process-associative "$@"
    ;;
commands)
    process-commands "$@"
    ;;
*)
    echo "unknown cmd: $cmd" >&2
    exit 1
    ;;
esac

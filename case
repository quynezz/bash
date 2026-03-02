#!/usr/bin/env bash

if (("$#" == 0)); then
    echo "name please"
    exit 1
fi

# checking if the name match the pattern
for name in "$@"; do
    case "$name" in
    d*)
        echo "hello $name, you good"
        ;;
    c*)
        echo "yeah even $name is ok"
        ;;
    *)
        echo "hell nah"
        ;;
    esac
done

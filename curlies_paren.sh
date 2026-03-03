#!/usr/bin/env bash

greet() {
    name="$1"
    echo hello "$name"
}

# this way the function will run as a subshell
# so that the vars will count as local and wont affect the parent shell
# greet() (
#     name="$1"
#     echo hello "$name"
# )

goodbye() {
    name="$1"
    echo goodbye "$name"
}

if ! (return 2>/dev/null); then
    name="buddy"
    echo "Before name = $name"
    # or could you this way
    # (greet zorkis)

    # idk bout this way
    # { greet zorkis;}

    echo "After name = $name"
fi

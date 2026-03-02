#!/usr/bin/env bash

hello() {
    local name=$1
    echo "Hello, $name !" >>greetings.txt
}

goodbye() {
    local name=$1
    echo "Goodbye, $name !" >>greetings.txt
}

if (($# == 0)); then
    echo "Please provide a name as an argument."
    exit
fi

for name in "$@"; do
    if [[ $name == n* ]]; then
        hello "$name"
    elif [[ $name == g* ]]; then
        goodbye "$name"
    else
        echo "Name '$name' does not start with 'n' or 'g'."
    fi
done

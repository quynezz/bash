#!/usr/bin/env bash

greet() {
    # This defined variable only be used within the "greet" function
    # set the local variable name
    local name=$1
    echo "Hello $name this called from function"

    success_message="Succcesfully greeted $name and appended to greetings.txt"
    return "$success_message"
}

for name in "$@"; do
    greet "$name" >>greetings.txt
done

greet Quyen
# this one is for testing if the return function is working or not
echo $?

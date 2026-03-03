#!/usr/bin/env bash

# the return command

my_function() {
    echo "this is output" >&1
    echo "this is err" >&1
    # the return funciton only have 1 byte - 8 bit -> from 0 -> 255
    return 254
}

if ! (return 2>/dev/null); then
    var=$(my_function)
    err_code="$?"
    echo "output: $var, err: $err_code"
fi

# some about fd (file descriptor)
# >/dev/null
#  2>&1
#  >&1
#  sore < input.txt
#  and more...

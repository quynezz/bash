#!/usr/bin/env bash

# declare a associate array (just like hashmap)
declare -A arr

arr[foo]=1
arr[bar]=2
arr[baz]=3
arr[tem]=4

for key in "${!arr[@]}"; do
    echo "$key has value = ${arr[$key]}"
done

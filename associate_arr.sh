#!/usr/bin/env bash

# declare a associate array (just like hashmap)
declare -A arr

arr[foo]=1
arr[bar]=2
arr[baz]=3
arr[tem]=4

# this will print the keys of the associate array -> so that it will access the value through the key
for key in "${!arr[@]}"; do
    echo "$key has value = ${arr[$key]}"
done

# this will print the values directly
for key in "${!arr[@]}"; do
    echo "$key has value = ${arr[$key]}"
done

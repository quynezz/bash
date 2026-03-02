#!/usr/bin/env bash

arr=("apple" "banana another banana" orange)

show_length() {
    echo "The length of '' is ${#arr}"
}

for item in "${arr[@]}"; do
    echo This is "$item"
done

show_length

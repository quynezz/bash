#!/usr/bin/env bash

# IFS stand for Internal Field Seperator, default will defined as a empty sapce ''
declare -a array=(first second third "this is a test string")

echo "Before redefined IFS:"
echo "${array[@]}"

IFS=,

echo "After redefined IFS:"
echo "${array[@]}"

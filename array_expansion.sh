#!/usr/bin/env bash

declare -a arr=(foo bar baz fuzz)

# substring -> take from the first element
echo "${arr[@]:1}"

# substring -> from the second element -> take two element
echo "${arr[@]:2:2}"

# delete the first 'f' from the beginning
# of the value
printf '%s\n' "${arr[@]#f}"

# replace the 'b' to 'c'
printf '%s\n' "${arr[@]//b/c}"

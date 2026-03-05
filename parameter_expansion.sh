#!/usr/bin/env bash

# parameter expansion
# this will at if the arguments did not pass -> default parameter
# name=${1:-foo}

# the same
# name=${1:-Quyen}

# print out the desire error mess if the arugment does not passed
# name=${1?"please supply the argument"}
#
# echo "hello $name"
# echo "end"
#

path="/home/foo/bar.txt"

# this will greddyly find the first 'o' and replace with 'a'
# echo ${path/o/a}

# this will find all of the 'o' and replace with 'a'
# echo ${path//o/a}

# this will from left -> right match all and delete the '/' -> only do once -> home/foo/bar.txt
echo "Prefix once ${path#*/}"

# this will left -> right match all and delete the '/' -> do all -> bar.txt
echo "Prefix all ${path##*/}"

# this will right -> left match the '/' and delete the until it seen the '/' again -> only do once -> home/foo/
echo "Suffix once ${path%/*}"

# this will right -> left find '/' -> delete and repeat -> do all -> bar.txt
echo "Suffix all ${path%%/*}"

# this will change once the character 'o' -> '_'
echo "change once: ${path/[o]/_}"

# this will change all the character 'o' and 'a' -> '_'
echo "change all: ${path//[oa]/_}"

# this will add betwen all the character 'o' and 'a' this -> '_'
echo "between: ${path//[oa]/_&_}"

#!/usr/bin/env bash

# name,age,city
# Alice,30,New York
# Bob,25,Los Angeles
# Charlie,35,Chicago
# David,28,Houston
# Eve,22,Phoenix
# Frank,40,Philadelphia
# Grace,27,San Antonio

# cut and take the field from 1 to 2
cat simple.txt | cut -d , -f 1-2

# cut and take the field from 2 to the start of the file
cat simple.txt | cut -d , -f -2

# cut and take the field from 2 to the end of the file
cat simple.txt | cut -d , -f 2-

# cut and take the field from 1 to 2 and 3
cat simple.txt | cut -d , -f 1-2,3

# transform the comma to tab
cat simple.txt | tr , '\t'

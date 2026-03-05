#!/usr/bin/env bash

string="most average dev"

len="${#string}"

# this will start from the 3 character till all and printout
# -> t average dev
echo "${string:3}"
# this will start from the 3 character and take all till the 4 characters
# -> t av
echo "${string:3:4}"

for ((i = 0; i < len; i++)); do
    echo "${string:i:1}"
done

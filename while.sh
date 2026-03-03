#!/usr/bin/env bash

enough=0
while read -r pass && [[ $enough -lt 5 ]]; do
    echo "Password is $pass"
    enough=$((enough + 1))
done

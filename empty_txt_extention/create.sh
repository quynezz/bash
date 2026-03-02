#!/usr/bin/env bash

files=("$@")

if (($# == 0)); then
    echo "Please enter name of the file!"
fi

for file in "${files[@]}"; do
    if [[ -e $file ]]; then
        echo "$file is exists"
    else
        echo 1 >"$file.txt"
    fi
done

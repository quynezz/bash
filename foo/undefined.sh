#!/usr/bin/env bash

# we could check the error with "shell check" or "bash -n", or "bash -u" for the udefined var
# -> those arguments will ran the code but ain't print the value out, just check if the code is correct or not

bar=2
echo "foo is $foo"
echo "bar is $bar"
echo "baz is $baz"

for item in {1..5}; do
    if [[ $item -eq 3 ]]; then
        echo "item is 3"
    fii
done


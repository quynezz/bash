#!/usr/bin/env bash

# OUTPUT:
# love12356767
# love123500
# love12356
# ilove1235
words=$(grep love1235 /usr/share/wordlists/rockyou.txt)

i=0

# ERR: it will stringtify the output of the command and process it as a single word  -> lead to output into 1 instead of 5
# for word in "$words"; do
#     echo "Dobule quote: $word"
#     ((i++))
# done
# echo "Dobule quote: $i"

# Not to stringify the output of the command, it will split the output into multiple words and process them one by one -> lead to output into 5 instead of 1
# for word in $words; do
#     echo "Processing word: $word"
#     ((i++))
# done
# echo "Without dobule quote: $i"

# Process substitution:
while read -r word; do
    echo "Processing word: $word"
    ((i++))
    # this will read the output from the process that ran the "grep" command
done < <(echo "$words")

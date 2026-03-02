#!/usr/bin/env bash

# sed
# -e is for regex expression, the delimiter for changing the word can be any character, here we use | and # to avoid conflict with the / in the path
sed=$(cat /etc/passwd | grep /bin/bash | grep zorkis | cut -d : -f 1,7 | sed -e 's|/bin/bash|/bin/zsh|' -e 's#zorkis#quyen#')
# echo "$sed"

# awk - we could either do this -F will delimiter by ":"
awk_1=$(cat /etc/passwd | awk -F: '{print $7}' | sort | uniq -c)
# awk_2=$(cat /etc/passwd | awk -F: '{print $1, $4}')
# awk_3=$(awk-F: "print $1" </etc/passwd)

# Condition mathching with awk
# awk_4=$(awk -F: '$7 == "/bin/bash" {print $1}' </etc/passwd)

echo "$awk_1"
# echo "$awk_2"
# echo "$awk_4"
# echo "$awk_3"

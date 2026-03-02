#!/usr/bin/env bash

# verbose flag, or could be called "debugged" flag, very useful for debugging, and also for showing the user what is going on
# you could use set -x only and it will debug the rest of the script, but it is better to use it only for the part you want to debug,
# and then turn it off with set +x
set -x
first_name=John
last_name=Doe
fullname="$first_name $last_name"
if [[ $first_name != "zorkis" ]]; then
    echo "nah you aint"
fi

echo "$fullname"

set +x

# or instead of running "./<file_name>.sh" you could run "bash -x <file_name>.sh" -> it basically the same

#!/usr/bin/env bash

# could either import as
# . ./lib/greetings.sh
# or
# . ./lib/greetings.sh

# hi quyen
# goodbye zorkis

# or could pre-definded the library
library=./lib/
# this basically tell the kernel to run through the lib and find the find match

# with the arugment to run the funciton
my-source() {
    source -p $library "$1"
}

# my-source greetings.sh || exit 1
# or this
if ! my-source greetings.sh; then exit 1; fi

hi quyen
hi zorkis

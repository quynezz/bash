#!/usr/bin/env bash

# '*' match with every keyword
cp ./glob/*.sh .

# '?' match with every keyword -> could be
# bar.sh or ber.sh, ...
mv ./glob/b?r.sh

# more of globbing
ls -la b?z*.txt
ls -la ./*.*

# this wil take all of the file start with 'b' and the next char must be 'a', 'r' or 'c'
ls -al ./b[arc]*

# this will take from range characters
ls -la b[a-z]*.txt

# move everyfile execept the folder temp itself into temp/
mv !(temp) temp/

# you could manually set the shell option
shopt -s # -s for set
shopt -s # -u for unset

# example -> which can not use !(*.txt) for finding exclaimation
shopt -u extglob

#!/usr/bin/env bash

# it gonna print out the latest command's exit status, even if it's in a pipe
pipe_status="$?"

# so if we ran the long command like this
exit 100 | cat | exit 10

# it will be 0 -> because the last command in the pipe is exit 10, and it will be 10
echo $pipe_status

# └─$ (exit 4) | (exit 5) | (exit 10)
# └─$ echo "${PIPESTATUS[*]}"
# -> 4 5 10

# but if we do this
# └─$ (exit 4) | (exit 5) | (exit 10)
# └─$ echo $?
# └─$ echo "${PIPESTATUS[*]}"
# -> 0

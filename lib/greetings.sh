#!/usr/bin/env bash

hi() {
    echo "Hi,$1"
}

goodbye() {
    echo "Bye,$1"
}

# this basically check if this file is being sourced or executed directly
# if this file is beging source -> the the two below line will not be executed
# this the same as if __name__ == "__main__" in python
# and in c++ we have int main() function
if ! (return 2>/dev/null); then
    hi john
    hi jenny
fi
# or this way
# if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
#     hi john
#     hi jenny
# fi

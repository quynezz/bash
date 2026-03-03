#!/usr/bin/env bash

# print out the "real time", "usr time" and "sys time" of the command "whoami"
# "sys time" is the time spent by the system on behalf of the process, "usr time" is the time spent by the user on behalf of the process, and "real time" is the total elapsed time of the command.
time whoami

#!/usr/bin/env bash

# extended globbing

# match one or more
ls -la ./+(foo|bar).txt

# match 0 or more
ls -la ./*(foo|bar).txt

ls -la ./@(foo|bar).txt

ls -la ./!(foo|bar).txt

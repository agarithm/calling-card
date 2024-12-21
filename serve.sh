#!/usr/bin/env bash
#
# Build script for the project.
#
# use pandoc to convert markdown to html for all files in the ./public directory

# change to this directory
cd "$(dirname "$0")"

./build.sh

cd public
http-server

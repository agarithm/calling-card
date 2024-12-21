#!/usr/bin/env bash
#
# Build script for the project.
#
# use pandoc to convert markdown to html for all files in the ./public directory

# change to this directory
cd "$(dirname "$0")"

# convert all markdown files in the ./public directory to html
# using the template provided in the ./template directory
cd src

for file in ./*.md; do
  pandoc -s -c style.css -B ../template/header.html -A ../template/footer.html -o "../public/${file%.md}.html" "$file"
done

cp ../template/style.css ../public/style.css

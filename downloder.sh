#!/bin/bash

# Replace 'file.md' with the name of your Markdown file
md_file="kodekloud_course_decks.md"

# Extract all the links that end with .pdf
pdf_links=$(grep -oP '(http.*?\.pdf)' "$md_file")

# Download each PDF using curl
for link in $pdf_links; do
  filename=$(basename "$link")
  curl -o "$filename" "$link"
done

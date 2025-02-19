#!/bin/bash

# Improved script with proper error handling and variable initialization

file_to_process="my_file.txt"

# Check if the file exists
if [ ! -f "$file_to_process" ]; then
  echo "Error: File '$file_to_process' not found." >&2
  exit 1
fi

# Use wc command with error checking
line_count=$(wc -l < "$file_to_process" 2>&1)

# Check if the wc command was successful
if [[ $? -ne 0 ]]; then
  echo "Error: Could not count lines in '$file_to_process': $line_count" >&2
  exit 1
else
  echo "Number of lines: $line_count"
fi

#!/bin/bash

# This script attempts to process a file, but it contains a subtle bug.
# It uses an uninitialized variable and doesn't handle potential errors properly.

file_to_process="my_file.txt"

# The bug: 'line_count' is used before being initialized.
# If 'my_file.txt' doesn't exist, the script will still print the line_count
# In addition, there is no error handling for the wc command failure

line_count=$(wc -l < "$file_to_process")
echo "Number of lines: $line_count"
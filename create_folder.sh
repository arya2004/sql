#!/bin/bash

# Check if an argument was provided
if [ -z "$1" ]; then
  echo "Please provide a folder name as the first argument."
  exit 1
fi

# Create the main folder with the given name
mkdir -p "hackerrank/$1"

# Create the two files inside the newly created folder
touch "hackerrank/$1/question.md"
touch "hackerrank/$1/solution.sql"

# Output success message
echo "Folder '$1' created with files 'question.md' and 'solution.sql'."

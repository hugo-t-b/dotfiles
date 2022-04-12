#!/usr/bin/env bash

filesToLink=(".gitconfig")

# Navigate to the root of the project
cd $(dirname "$0")/../

# Create symlinks for each file in the list
for file in ${filesToLink[@]}; do
  ln $file ~/$file
done

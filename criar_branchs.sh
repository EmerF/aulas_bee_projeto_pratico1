#!/bin/bash

# Assuming your branch names are listed in branch_names.txt
file="branch_names.txt"
remote="origin"

while IFS= read -r branch_name
do
  # Create a new branch
  git checkout -b "$branch_name"

  # Push the new branch to the remote repository
  git push "$remote" "$branch_name"

  # Switch back to the main branch (or another base branch)
  git checkout main  # Change 'main' to your base branch name if needed
done < "$file"

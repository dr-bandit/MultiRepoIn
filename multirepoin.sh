#!/bin/bash

# List of GitHub repositories to install
repositories=(
    "https://github.com/user/repo1"
    "https://github.com/user/repo2"
    "https://github.com/user/repo3"
)

# Loop through the repositories and clone/install them
for repo in "${repositories[@]}"
do
    echo "Installing $repo..."
    git clone "$repo"
    cd "$(basename "$repo" .git)"
    # Run any necessary setup or installation commands for each repository
    # For example, if it is a Python package, you might run: python setup.py install
    # Replace the command accordingly for your specific repositories
    # ...
    cd ..
done

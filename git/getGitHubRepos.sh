#!/bin/bash

# Access the environment variables
GHTOKEN=$GITHUB_TOKEN
GHORG=$GITHUB_ORG

# Get the list of repositories from GitHub
REPOS=$(curl -s -H "Authorization: token $GHTOKEN" https://api.github.com/orgs/$GHORG/repos)

# Use jq to parse the JSON and extract the names
echo $REPOS | jq -r '(.[] | [.name,.html_url]) | @csv' >> $GHORG-GitHubRepos.csv

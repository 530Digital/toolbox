#!/bin/bash

# Access the environment variables
BBTOKEN=$BITBUCKET_TOKEN
BBWORKSPACE=$BITBUCKET_WORKSPACE

# Use the variables in the curl command
curl --request GET \
  --url "https://api.bitbucket.org/2.0/repositories/$BBWORKSPACE" \
  --header "Authorization: Bearer $BBTOKEN" \
  --header 'Accept: application/json' | jq -r '(.values[] | [.name,.links.html.href]) | @csv' >> $BBWORKSPACE-BitbucketRepos.csv

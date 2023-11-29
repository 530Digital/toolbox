# Get Repos List via CLI

The scripts in this folder will get a list of repositories from either bitbucket or github and output them to a csv file. You will need to have [jq](https://jqlang.github.io/jq) installed in order for the scripts to work.

## Bitbucket

To get a list of repositories from a bitbucket workspace you need to create an access token. You can do this by going to [https://bitbucket.org/<YOUR_WORKSPACE>/workspace/settings/access-tokens](https://bitbucket.org/<YOUR_WORKSPACE>/workspace/settings/access-tokens) (replace YOUR_WORKSPACE with your workspace name) and click on "Create Workspace Access Token". You will need to provide a name for the token and select the permissions you want to grant. For this script you will need to select "Repositories: Read". Once you have created the token you will need to set the environment variables, you can use the export command in your terminal:

```bash
export BITBUCKET_TOKEN="your_bitbucket_token"
export WORKSPACE_ID="your_workspace_id"
```

Then run the script with:

```bash
./getBitbucketRepos.sh
```

## Github

To get a list of repositories from a github organization you need to create a personal access token. You can do this by going to [https://github.com/settings/tokens](https://github.com/settings/tokens) and click on "Generate new token". Select Generate new token (classic). You will need to provide a name for the token and select the permissions you want to grant. For this script you will need to select "repo: Full control of private repositories". Once you have created the token you will need to set the environment variables, you can use the export command in your terminal:

```bash
export GITHUB_TOKEN="your_github_token"
export GITHUB_ORG="your_organization"
```

Then run the script with:

```bash
./getGithubRepos.sh
```

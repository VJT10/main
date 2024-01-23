#!/bin/bash
# Azure DevOps Repo URL
azure_devops_repo="https://vijayatummala91:7lrieke35r3caofa2ic6o6jmfpnzk52p62new2tznaf4xbjzvtwa@dev.azure.com/vijayatummala91/VT-PERSONAL/_git/VT-PERSONAL"
# GitHub Repo URL
github_username="VJT10"
github_token="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"
github_repo="main"
github_repo_url="https://${github_username}:${github_token}@github.com/${github_username}/${github_repo}.git"
# Clone Azure DevOps Repo
git clone ${azure_devops_repo}
cd VT-PERSONAL
# Add GitHub repo as a new remote
git remote add github ${github_repo_url}
# Push to GitHub
git push -u github --force --all
echo "Repository migration completed!"
~                                         
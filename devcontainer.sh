#!/bin/bash

# had to create the branch
export BRANCH="devcontainer"

# needed to setup git names
git config --global user.email "s.atanasov@dundts.com"
git config --global user.name "Stoyan Atanasov"

# get the token from pat.txt
export GITHUB_TOKEN=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

# do the flux bootstrap
flux bootstrap git \
  --url "https://github.com/${organization}/${repository}" \
  --branch $BRANCH \
  --token-auth \
  --password ${GITHUB_TOKEN} \
  --path "/deploy/bootstrap"

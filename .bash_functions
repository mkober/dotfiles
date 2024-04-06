#!/bin/bash

function git_remove_file() {
  git filter-branch --force --index-filter \
  "git rm --cached --ignore-unmatch $1" \
  --prune-empty --tag-name-filter cat -- --all
}

function git_status_check() {
  cd ~/Repos
  for folder in *; do
    cd $folder
    git status | grep -q "nothing to commit"
    if [ $? -ne 0 ]; then
      printf "\n==================================\n"
      printf "GIT PROJECT: $folder\n"
      git status
      printf "\n\n"
    fi
    cd ..
  done
}

function git_sync_repos() {
  cd ~/Repos
  for folder in *; do
    cd $folder
    git status | grep -q "nothing to commit"
    if [ $? -ne 0 ]; then
      printf "\n==================================\n"
      printf "GIT PROJECT: $folder\n"
      git add .
      git commit -am "auto-sync with local"
      branch="main"
      if git branch --list | grep -q "master"; then
        branch="master"
      fi
      git checkout $branch
      git pull origin $branch --rebase
      git push origin $branch
      printf "\n\n"
    fi
    cd ..
  done
}

function aws_sso_profile() {
  aws sso login --profile "$1"
}

function aws_s3_put_to_bucket() {
  aws s3 cp $1 "s3://$2/$1"
}

function aws_s3_get_from_bucket() {
  aws s3 cp "s3://$2/$1" $1
}

function aws_s3_remove_from_bucket() {
  aws s3 rm "s3://$1"
}

function aws_s3_create_bucket() {
  aws s3 mb s3://$1
}

function aws_s3_rename_bucket() {
  aws s3 mb s3://$2 
  aws s3 cp s3://$1 s3://$2 --recursive
  aws s3 rb s3://$1 --force
}

function aws_ecs_bash() {
  aws ecs execute-command  \
      --region us-east-1 \
      --cluster "$1" \
      --task "$2" \
      --container "$3" \
      --command "/bin/bash" \
      --interactive
}

function update_clock () {
  sudo hwclock -s
  sudo ntpdate time.windows.com
}

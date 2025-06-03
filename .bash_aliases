#!/bin/bash

# Single character quick hits
alias l="ls -la"
alias c="clear"
alias b="source ~/.bash_aliases"
alias h="cd ~/"

# Neovim is my VI & VIM
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# Quick Python
alias python="python3"
alias pip="pip3"
alias py="python3"
alias pyv="source ~/.venv/bin/activate"
alias pyvm="python -m venv .venv"
alias pyvd="deactivate"

# I hate typing pnpm but normally use npm anyway
alias pn="pnpm"

# The second greatest editor next to Neovim
alias doom="~/.config/emacs/bin/doom"

# Git shortcuts because I'm lazy
alias gts="git status"
alias gtb="git branch"
alias gtd="git diff"
alias gtp="git push"
alias gtpo="git push origin"
alias gtf="git fetch"
alias gtfo="git fetch origin main"
alias gtm="git merge"
alias gtmo="git merge origin/main"
alias gtr="git rebase"
alias gta="git add"
alias gtc="git commit -am"
alias gto="git checkout"
alias gtob="git checkout -b"
alias git-remove="git_remove_file"
alias git-status="git_status_check"
alias git-sync="git_sync_repos"

# Tmux T&A
alias ta="tmux attach"

# Too many secrets
alias evt="~/Repos/mkober/vault-tec/run.sh encrypt"
alias dvt="~/Repos/mkober/vault-tec/run.sh decrypt"
alias vault="cd $VAULT_PATH"

# Reset the path & clear out the screen
alias reset="cd ~ && clear"

# Go to my repos
alias repos="cd ~/Repos"
alias dot="cd ~/Repos/mkober/dotfiles"
alias cloudbuild="cd ~/Repos/mkober/cloudbuild"
alias fancy="cd ~/Repos/mkober/fancyrabbit"

# The day job
alias pkh="cd ~/Repos/pkh"
alias pkh-dev="export envName=dev01"
alias pkh-sand="export envName=sand01"
alias pkh-stage="export envName=stage01"
alias pkh-prod="export envName=prod01"
alias pkh-npm="npm login --scope=@projectkittyhawk --auth-type=legacy --registry=https://npm.pkg.github.com"

# Shortcuts for AWS Commands because they are long
complete -C '/usr/local/bin/aws_completer' aws

alias sso="aws_sso_profile"

alias ec2-running="aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query 'Reservations[].Instances[].[InstanceId, Tags]' --output text"
alias ec2-stop="aws ec2 stop-instances --instance-ids"
alias ec2-start="aws ec2 start-instances --instance-ids"
alias ecr-login="aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws"

alias nosql-workbench='/opt/DynamoDBWorkbench/NoSQL\ Workbench-linux-3.10.0.AppImage'
alias ecs-connect="aws_ecs_bash"
alias stack-names="aws_cloudformation_list_stack_names"

alias ls3="aws s3 ls"
alias put3="aws_s3_put_to_bucket"
alias get3="aws_s3_get_from_bucket"
alias rm3="aws_s3_remove_from_bucket"
alias mb3="aws_s3_create_bucket"
alias mvb="aws_s3_rename_bucket"

# Update Clock because of time drift on WSL
alias clock="update_clock"

# Don't put baby in a corner
alias sz="open -a /Applications/Zscaler/Zscaler.app --hide; sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl load {} \;"
alias kz="find /Library/LaunchAgents -name '*zscaler*' -exec launchctl unload {} \;;sudo find /Library/LaunchDaemons -name '*zscaler*' -exec launchctl unload {} \;"

# Docker Aliases
#alias jq="docker run -it ghcr.io/jqlang/jq"






















































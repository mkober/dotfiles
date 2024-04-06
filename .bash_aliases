#!/bin/bash

# Load the referenced functions 
source ~/.bash_functions

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
alias py="python3"
alias pyv="source .venv/bin/activate"
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
alias gtm="git merge"
alias gtr="git rebase"
alias gta="git add"
alias gtc="git commit -am"
alias gto="git checkout"

alias git-remove="git_remove_file"
alias git-status="git_status_check"
alias git-sync="git_sync_repos"

# Too many secrets
alias evt="~/Repos/vault-tec/run.sh encrypt"
alias dvt="~/Repos/vault-tec/run.sh decrypt"
alias vault="cd $VAULT_PATH"

# Reset the path & clear out the screen
alias reset="cd ~ && clear"

# Go to my repos
alias repos="cd ~/Repos"
alias dot="cd ~/Repos/dotfiles"
alias cloudbuild="cd ~/Repos/cloudbuild"
alias mk="cd ~/Repos/markkoberlein"
alias fancy="cd ~/Repos/fancyrabbit"
alias setup="cd ~/Repos/ubuntu-setup"

# Needed for WSL to open URLs in Windows Browser
# export BROWSER='/mnt/c/Program\ Files/BraveSoftware/Brave-Browser/Application/brave.exe'

# Shortcuts for AWS Commands because they are long
complete -C '/usr/local/bin/aws_completer' aws

alias aws-sso="aws_sso_profile"

alias aws-ec2-running="aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query 'Reservations[].Instances[].[InstanceId, Tags]' --output text"
alias aws-ec2-stop="aws ec2 stop-instances --instance-ids"
alias aws-ec2-start="aws ec2 start-instances --instance-ids"
alias aws-ecr-login="aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws"

alias aws-nosql-workbench='/opt/DynamoDBWorkbench/NoSQL\ Workbench-linux-3.10.0.AppImage'
alias aws-ecs-connect="aws_ecs_bash"

alias ls3="aws s3 ls"
alias put3="aws_s3_put_to_bucket"
alias get3="aws_s3_get_from_bucket"
alias rm3="aws_s3_remove_from_bucket"
alias mb3="aws_s3_create_bucket"
alias mvb="aws_s3_rename_bucket"

# Update Clock because of time drift on WSL
alias clock="update_clock"

# Docker Aliases
alias jq="docker run -it ghcr.io/jqlang/jq"

alias next="npx create-next-app@latest"

# Customize Bash Prompt
git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

HOST='\[\033[02;36m\]\h'; HOST='@'$HOST
CUSTOM_USER='\[\033[01;31m\]$USER\[\033[01;32m\]'
LOCATION=' \[\033[01;32m\]`pwd `'
BRANCH=' \[\033[00;33m\]($(git_branch))\[\033[00m\]\n\[\033[1;33m\]-> \[\033[0m\] '
PS1=$CUSTOM_USER$HOST$LOCATION$BRANCH

export VAULT_PATH="/home/mkober/Vault"
export GDK_DPI_SCALE=1.5
export GDK_SCALE=1.5
export CLUTTER_SCALE=1.5
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"
export PATH="$PATH:/usr/local/bin:/home/mkober/.local/bin"

# Startup TMUX and attach session if it exists
tmux attach -t 0 || tmux new -s 0



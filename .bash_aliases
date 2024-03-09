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

function git_remove_file() {
  git filter-branch --force --index-filter \
  "git rm --cached --ignore-unmatch $1" \
  --prune-empty --tag-name-filter cat -- --all
}
alias git-remove="git_remove_file"

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
alias git-status="git_status_check"

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
alias git-sync="git_sync_repos"

# Too many secrets
export VAULT_PATH="/home/mkober/Vault"
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

export GDK_DPI_SCALE=1.5
export GDK_SCALE=1.5
export CLUTTER_SCALE=1.5
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

# Needed for WSL to open URLs in Windows Browser
# export BROWSER='/mnt/c/Program\ Files/BraveSoftware/Brave-Browser/Application/brave.exe'

# Shortcuts for AWS Commands because they are long
complete -C '/usr/local/bin/aws_completer' aws

function aws_sso_profile() {
  aws sso login --profile "$1"
}
alias aws-sso="aws_sso_profile"

alias aws-ec2-running="aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query 'Reservations[].Instances[].[InstanceId, Tags]' --output text"
alias aws-ec2-stop="aws ec2 stop-instances --instance-ids"
alias aws-ec2-start="aws ec2 start-instances --instance-ids"
alias aws-ecr-login="aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws"
alias aws-nosql-workbench='/opt/DynamoDBWorkbench/NoSQL\ Workbench-linux-3.10.0.AppImage'

alias ls3="aws s3 ls"

function aws_s3_put_to_bucket() {
  aws s3 cp $1 "s3://$2/$1"
}
alias put3="aws_s3_put_to_bucket"

function aws_s3_get_from_bucket() {
  aws s3 cp "s3://$2/$1" $1
}
alias get3="aws_s3_get_from_bucket"

function aws_s3_remove_from_bucket() {
  aws s3 rm "s3://$1"
}
alias rm3="aws_s3_remove_from_bucket"

function aws_s3_create_bucket() {
  aws s3 mb s3://$1
}
alias mb3="aws_s3_create_bucket"

function aws_s3_rename_bucket() {
  aws s3 mb s3://$2 
  aws s3 cp s3://$1 s3://$2 --recursive
  aws s3 rb s3://$1 --force
}
alias mvb="aws_s3_rename_bucket"

function aws_ecs_bash() {
  aws ecs execute-command  \
      --region us-east-1 \
      --cluster "$1" \
      --task "$2" \
      --container "$3" \
      --command "/bin/bash" \
      --interactive
}
alias aws-ecs-connect="aws_ecs_bash"

# Update Clock because of time drift on WSL
function update_clock () {
  sudo hwclock -s
  sudo ntpdate time.windows.com
}
alias clock="update_clock"

# Docker Aliases
alias jq="docker run -it ghcr.io/jqlang/jq"

# Customize Bash Prompt
git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
HOST='\[\033[02;36m\]\h'; HOST='@'$HOST
CUSTOM_USER='\[\033[01;31m\]$USER\[\033[01;32m\]'
LOCATION=' \[\033[01;32m\]`pwd `'
BRANCH=' \[\033[00;33m\]($(git_branch))\[\033[00m\]\n\[\033[1;33m\]-> \[\033[0m\] '
PS1=$CUSTOM_USER$HOST$LOCATION$BRANCH

# Update the path for the bins
export PATH="$PATH:/usr/local/bin:/home/mkober/.local/bin"

# Startup TMUX and attach session if it exists
tmux attach -t 0 || tmux new -s 0



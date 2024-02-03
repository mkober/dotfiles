# Neovim is my VI & VIM
alias vi="nvim"
alias vim="nvim"

# Python Environments
alias python="python3"
alias py="python3"
alias pyv="source .venv/bin/activate"
alias pyvd="deactivate"

# I hate typing pnpm but normally use npm anyway
alias pn="pnpm"

# The second greatest editor next to Neovim
alias doom="~/.config/emacs/bin/doom"

# Git Shortcuts
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

# Too many secrets
alias evt="~/vault/bin/encrypt.sh"
alias dvt="~/vault/bin/decrypt.sh"

# Clear out the screen
alias reset="cd ~ && clear"

export GDK_DPI_SCALE=1.5
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

# Needed for WSL to open URLs in Windows Browser
export BROWSER='/mnt/c/Program\ Files/BraveSoftware/Brave-Browser/Application/brave.exe'

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

# Update the Path
export PATH="$PATH:/usr/local/bin:/home/mkober/.local/bin"

# Startup TMUX and attach session if it exists
tmux attach -t 0 || tmux new -s 0

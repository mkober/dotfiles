alias vi="nvim"
alias vim="nvim"

alias python="python3"
alias py="python3"
alias pyv="source .venv/bin/activate"
alias pyvd="deactivate"

alias pn="pnpm"

alias doom="~/.config/emacs/bin/doom"


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

alias evt="~/vault/bin/encrypt.sh"
alias dvt="~/vault/bin/decrypt.sh"

alias reset="cd ~ && clear"

export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH="$PATH:/usr/local/bin:/home/mkober/.local/bin"

complete -C '/usr/local/bin/aws_completer' aws

tmux attach -t 0 || tmux new -s 0

function aws_sso_profile() {
  aws sso login --profile "$1"
}
alias aws-sso="aws_sso_profile"
alias aws-ec2-running="aws ec2 describe-instances --filters Name=instance-state-name,Values=running --query 'Reservations[].Instances[].[InstanceId, Tags]' --output text"
alias aws-ec2-stop="aws ec2 stop-instances --instance-ids"
alias aws-ec2-start="aws ec2 start-instances --instance-ids"
alias aws-ecr-login="aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws"

function update_clock () {
  sudo hwclock -s
  sudo ntpdate time.windows.com
}
alias clock="update_clock"

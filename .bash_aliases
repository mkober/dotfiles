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

function update_clock () {
  sudo hwclock -s
  sudo ntpdate time.windows.com
}
alias clock="update_clock"

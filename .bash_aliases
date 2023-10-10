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
alias gtf="git fetch"
alias gtm="git merge"
alias gtr="git rebase"
alias gta="git add"
alias gtc="git commit"
alias gto="git checkout"

alias evt="~/vault/bin/encrypt.sh"
alias dvt="~/vault/bin/decrypt.sh"

export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH="$PATH:/usr/local/bin:/home/mkober/.local/bin"

complete -C '/usr/local/bin/aws_completer' aws

tmux attach -t 0 || tmux new -s 0


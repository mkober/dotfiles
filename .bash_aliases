alias vi="nvim"
alias vim="nvim"

alias python="python3"
alias py="python3"
alias pyv="source .venv/bin/activate"
alias pyvd="deactivate"

alias pn="pnpm"

alias doom="~/.config/emacs/bin/doom"

alias gits="git status"
alias gitb="git branch"
alias gitd="git diff"
alias gitp="git push"
alias gitf="git fetch"
alias gitm="git merge"
alias gitr="git rebase"
alias gita="git add"
alias gitc="git commit"
alias gito="git checkout"

alias ev="~/repos/vault/bin/encrypt.sh"
alias dv="~/repos/vault/bin/decrypt.sh"

alias en="~/repos/notebook/bin/encrypt.sh"
alias dn="~/repos/notebook/bin/decrypt.sh"


# Mount D: drive
wsl.exe -u root -e mount -t drvfs D: /mnt/d > /dev/null 2>&1

# Set Dark Theme
export GTK_THEME=Adwaita:dark

export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH="$PATH:/usr/local/bin:/home/mkober/.local/bin"

complete -C '/usr/local/bin/aws_completer' aws

tmux attach -t 0 || tmux new -s 0


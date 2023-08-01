alias vi="nvim"
alias vim="nvim"

alias python="python3"
alias py="python3"
alias pyv="source .venv/bin/activate"
alias pyvd="deactivate"

alias pn="pnpm"

alias doom="~/.config/emacs/bin/doom"

alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gp="git push"
alias gf="git fetch"
alias gm="git merge"
alias gr="git rebase"
alias ga="git add"
alias gc="git commit"
alias go="git checkout"

alias ev="~/repos/vault/bin/encrypt.sh"
alias dv="~/repos/vault/bin/decrypt.sh"


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


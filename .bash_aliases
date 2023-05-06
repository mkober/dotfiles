alias vi="nvim"
alias vim="nvim"

alias pn="pnpm"

alias doom="~/.config/emacs/bin/doom"

alias gs="git status"
alias gb="git branch"
alias gd="git diff"
alias gdc="git diff --cached"
alias gp="git push origin"
alias gpm="git push origin main"

# Mount D: drive
wsl.exe -u root -e mount -t drvfs D: /mnt/d > /dev/null 2>&1

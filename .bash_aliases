alias vi="nvim"
alias vim="nvim"

alias pn=pnpm

alias gs="git status"
alias gd="git diff"
alias gdc="git diff --cached"
alias gpom="git push origin main"

# Mount D: drive
wsl.exe -u root -e mount -t drvfs D: /mnt/d > /dev/null 2>&1

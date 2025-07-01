#!/bin/bash

source ~/.bash_functions

# Load Homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# Customize Bash Prompt
git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

HOST='\[\033[02;36m\]\h'; HOST='@'$HOST
CUSTOM_USER='\[\033[01;31m\]$USER\[\033[01;32m\]'
LOCATION=' \[\033[01;32m\]`pwd `'
BRANCH=' \[\033[00;33m\]($(git_branch))\[\033[00m\]\n\[\033[1;33m\]-> \[\033[0m\] '
PS1=$CUSTOM_USER$HOST$LOCATION$BRANCH

if [[ $OSTYPE == 'darwin'* ]]; then
  export VAULT_PATH="/Users/mkoberlein/Vault"
else
  export VAULT_PATH="/home/mkober/Vault"
fi

export GDK_DPI_SCALE=1.5
export GDK_SCALE=1.5
export CLUTTER_SCALE=1.5
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR="$VISUAL"

# Set consolidated PATH with priorities
# Python first, then Homebrew, then OpenJDK, then standard system paths
export PATH="/opt/homebrew/opt/python@3.12/bin:/opt/homebrew/opt/python@3.12/libexec/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/opt/homebrew/opt/openjdk/bin:$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Load aliases if present
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

# Load NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Load iTerm2 integration if available
[ -f "${HOME}/.iterm2_shell_integration.bash" ] && source "${HOME}/.iterm2_shell_integration.bash"

clear

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/mkoberlein/.lmstudio/bin"
# End of LM Studio CLI section


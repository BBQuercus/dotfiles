# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# UV
export PATH="$HOME/.local/bin:$PATH"
alias python="$(uv python find)"
alias pip="python -m pip"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode auto      # update automatically without asking

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Hide "You have Mail" message on login
MAILCHECK=0

# Which plugins would you like to load?
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  you-should-use
  vi-mode
  python
)
source $ZSH/oh-my-zsh.sh

# User configuration
# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Aliases
# MacOS specific
alias dl="cd ~/Downloads"
alias do="cd ~/Documents"
alias dt="cd ~/Desktop"
alias hub="cd ~/Github"
alias mergepdf="/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py"

# Commands
alias df="df -h"
alias fd="find . -name"
alias grep="grep --color=auto"
alias mkdir="mkdir -p"
alias mv="mv -i"
alias o="open ."
alias sl=ls
alias wget="wget -c"
alias vim="nvim"

# Git
alias g="git"
alias ga="git add"
alias galiases="git config --get-regexp alias"
alias gammend="git amend = commit --amend --reuse-message=HEAD"
alias gb="git branch"
alias gbs="git branch --all"
alias gbd="git branch | grep -v 'main' | xargs git branch -D"
alias gbrd="git branch -r | grep -v 'origin/main' | xargs git branch -r -D"
alias gc="git commit"
alias gca="git add -A && git commit -av"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --all --oneline --graph --decorate"
alias gp="git push"
alias gr="git remote"
alias gremotes="git remote --verbose"
alias gs="git status -s"

# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

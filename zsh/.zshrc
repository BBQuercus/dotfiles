# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/beichenberger/.oh-my-zsh"

ZSH_THEME="robyrussel"
HYPHEN_INSENSITIVE="true"
export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"

# Hide "You have Mail" message on login
MAILCHECK=0

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
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

# Git
alias g="git"
alias ga="git add"
alias galiases="git config --get-regexp alias"
alias gammend="git amend = commit --amend --reuse-message=HEAD"
alias gb="git branch"
alias gbs="git branch --all"
alias gc="git commit"
alias gca="git add -A && git commit -av"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --all --oneline --graph --decorate"
alias gp="git push"
alias gr="git remote"
alias gremotes="git remote --verbose"
alias gs="git status -s"

# Python / conda
alias cona="conda activate"
alias cond="conda deactivate"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

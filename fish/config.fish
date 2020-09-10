# GENERAL

# greeting
set fish_color_command 2196f3
set fish_greeting (date)
set fish_color_cwd green
set fish_color_search_match --background=white
set fish_color_selection --background=white

# colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

# vim key bindings
set -x EDITOR vim
fish_vi_key_bindings

# set locale
export LC_ALL=en_US.UTF-8

# reload fish config
function reload
    source ~/.config/fish/config.fish
end

# ALIASES

# movement
alias dt="cd ~/Desktop"
alias do="cd ~/Documents"
alias dl="cd ~/Downloads"
alias gh="cd ~/Github"
alias note="cd ~/Github/lab-notebook"
alias curr="cd ~/Github/deepBlink"
alias up="cd ../"

# commands
alias df="df -h"
alias fd="find . -name"
alias lla="ls -lah"
alias mkdir="mkdir -p"
alias mv="mv -i"
alias o="open ."
alias sl=ls
alias v="vim"
alias vpn="open /Applications/Pulse\ Secure.app/Contents/Plugins/JamUI/PulseTray.app"

# git
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

# DEVELOPMENT

# python
alias python="python3"
alias act="source venv/bin/activate.fish"
set -U fish_user_paths "$HOME/conda/bin" $fish_user_paths # only once at startup
register-python-argcomplete --shell fish pipx | . # pipx

# conda
alias cona="conda activate"
alias cond="conda deactivate"
eval /Users/beichenberger/conda/bin/conda "shell.fish" "hook" $argv | source

# use tmux as default interface
# if not set -q TMUX
#     set -g TMUX tmux new-session -d -s base
#     eval $TMUX
#     tmux attach-session -d -t base
# end


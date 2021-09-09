# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home_fmi/01/eichbast/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Hide "You have Mail" message on login
MAILCHECK=0

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    vi-mode
    python
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
# Movement
#alias dt="cd ~/Desktop"
#alias do="cd ~/Documents"
#alias dl="cd ~/Downloads"
#alias hub="cd ~/Github"
#alias note="cd ~/Github/lab-notebook"
#alias curr="cd ~/Github/deepBlink"
alias up="cd ../"

# Commands
alias df="df -h"
alias fd="find . -name"
alias lla="ls -lah"
alias mkdir="mkdir -p"
alias mv="mv -i"
alias o="open ."
alias sl=ls
alias v="vim"
#alias vpn="open /Applications/Pulse\ Secure.app/Contents/Plugins/JamUI/PulseTray.app"

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
alias tboard='tensorboard --logdir ./ --port=16007'
alias jup='jupyter notebook --no-browser --port=8889'
alias gpu='watch -n 1 nvidia-smi'
alias python="python3"
alias act="source venv/bin/activate"
alias cona="conda activate"
alias cond="conda deactivate"
#unalias ipython  # python plugin sets weird alias

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [[ -d "/work2/gchao/eichbast/miniconda"  ]]; then
    __conda_setup="$('/work2/gchao/eichbast/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/work2/gchao/eichbast/miniconda/etc/profile.d/conda.sh" ]; then
            . "/work2/gchao/eichbast/miniconda/etc/profile.d/conda.sh"
        else
            export PATH="/work2/gchao/eichbast/miniconda/bin:$PATH"
        fi
    fi
    unset __conda_setup
else
    __conda_setup="$('/tungstenfs/scratch/gchao/eichbast/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    else
        if [ -f "/tungstenfs/scratch/gchao/eichbast/miniconda/etc/profile.d/conda.sh" ]; then
            . "/tungstenfs/scratch/gchao/eichbast/miniconda/etc/profile.d/conda.sh"
        else
            export PATH="/tungstenfs/scratch/gchao/eichbast/miniconda/bin:$PATH"
        fi
    fi
    unset __conda_setup
fi
# <<< conda initialize <<<

# Run setup to limit resource usage
NCORES=16
export OMP_NUM_THREADS=$NCORES
export OPANBLAS_NUM_THREADS=$NCORES
export MKL_NUM_THREADS=$NCORES
export VECLIB_MAXIMUM_THREADS=$NCORES
export NUMEXPR_NUM_THREADS=$NCORES

alias tmp="cd /tungstenfs/scratch/shared/gchao_ggiorget/tmp/"
alias ppi="cd /tungstenfs/scratch/shared/gchao_gdiss_gzenke/ppi-preliminary/"
alias group="cd /tungstenfs/groups/gchao/"
alias scratch="cd /tungstenfs/scratch/gchao/"

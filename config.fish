# Fish settings 
set fish_color_command 2196f3
set fish_greeting (date)
set fish_color_cwd green
set fish_color_search_match --background=white
set fish_color_selection --background=white
set -x EDITOR vim
fish_vi_key_bindings

# set locale
# set LANG en_US.UTF-8
# set LC_ALL en_US.UTF-8
export LC_ALL=en_US.UTF-8

# reload fish config
function reload
    source ~/.config/fish/config.fish
end

# aliases
alias g=git
alias desk='cd ~/Desktop'
alias docs='cd ~/Documents'
alias down='cd ~/Downloads'
alias curr='cd ~/Documents/Current/code'
alias code='cd ~/Documents/Coding'

# python
alias python='python3'
alias pip_update='pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'

# git config
function gitprivate -d "Apply private git configs"
    if test -z "$argv[1]"
        echo "Usage: gitprivate <gpg_key_id>" 1>&2
        return 1
    end
    git config user.name maralla
    git config user.email maralla.ai@gmail.com
    git config user.signingkey $argv[1]
end


# options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "informative"

# colors
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)
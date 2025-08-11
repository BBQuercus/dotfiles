#!/usr/bin/env bash
set -e

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH for Apple Silicon Macs
if [[ $(uname -m) == 'arm64' ]]
then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
brew update
brew upgrade

# install GNU core utilities
brew install bash
brew install bash-completion2
brew install coreutils
brew install findutils
brew install htop
brew install moreutils
brew install wget

# install more recent versions of some macOS tools
brew install gmp
brew install grep
brew install openssh
brew install php
brew install screen
brew install vim neovim

# install other useful binaries
brew install gcc
brew install git
brew install git-lfs
brew install ranger
brew install rename
brew install ripgrep
brew install rsync
brew install speedtest-cli
brew install stow
brew install tldr
brew install tmux
brew install fzf
brew install gh
brew install reattach-to-user-namespace
brew install node
brew install python3
brew install pyright
brew install ruff

# Install fzf key bindings and fuzzy completion
$(brew --prefix)/opt/fzf/install --all --no-bash --no-fish

# Python packages for debugging
pip3 install --upgrade pip
pip3 install debugpy pytest black isort

# MacOS casks
brew install vlc --cask

# remove outdated versions
brew cleanup
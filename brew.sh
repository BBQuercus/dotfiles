#!/usr/bin/env bash
echo 'PATH="/opt/homebrew/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
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
brew install vim --with-override-system-vi

# install other useful binaries
brew install gcc
brew install git
brew install git-lfs
brew install ranger
brew install rename
brew install ripgrep
brew install rsync
brew install speedtest
brew install stow
brew install tldr

# MacOS casks
brew install vlc --cask

# remove outdated versions
brew cleanup
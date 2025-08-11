#!/usr/bin/env bash
set -e

# oh-my-zsh and plugins
if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] && git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
[ ! -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
[ ! -d ~/.oh-my-zsh/custom/plugins/you-should-use ] && git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ~/.oh-my-zsh/custom/plugins/you-should-use
[ ! -d ~/.oh-my-zsh/custom/themes/powerlevel10k ] && git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k 

# powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts

# vim and vundle
[ ! -d ~/.vim/bundle/Vundle.vim ] && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install vim plugins
vim +PluginInstall +qall 2>/dev/null || echo "Vim plugins will be installed on first launch"

# nvm (Node Version Manager)
if [ ! -d ~/.nvm ]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
fi

# uv (Python package manager)
if ! command -v uv &> /dev/null; then
  curl -LsSf https://astral.sh/uv/install.sh | sh
fi

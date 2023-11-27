# zsh base
# rm -rf ~/.oh-my-zsh

# oh-my-zsh and plugins
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k --depth=1 
ln -s ~/Github/dotfiles/.zshrc ~/.zshrc
ln -s ~/Github/dotfiles/.p10k.zsh ~/.p10k.zsh

# powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts; ./install.sh; cd ..; rm -rf fonts

# vim and vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/Github/dotfiles/.vimrc ~/.vimrc

# other configs
ln -s ~/Github/dotfiles/.ssh_config ~/.ssh/config
ln -s ~/Github/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/Github/dotfiles/.gitconfig ~/.gitconfig
mkdir ~/.ipython/profile_default
ln -s ~/Github/dotfiles/ipython_config.py ~/.ipython/profile_default/ipython_config.py
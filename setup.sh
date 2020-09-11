# zsh base
wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
mkdir zsh && unxz zsh.tar.xz && tar -xvf zsh.tar -C zsh --strip-components 1
cd zsh
./configure --prefix=$HOME
make
make install

# oh-my-zsh and plugins
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /Users/beichenberger/.oh-my-zsh/themes/powerlevel10k

ln -s ~/Github/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/Github/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

# vim and vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/Github/dotfiles/vim/.vimrc .vimrc

# other configs
ln -s ~/Github/dotfiles/git/.gitconfig .gitignore
ln -s ~/Github/dotfiles/ssh/config ~/.ssh/config
ln -s ~/Github/dotfiles/tmux/tmux.conf ~/.tmux.conf

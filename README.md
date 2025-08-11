# Dotfiles

macOS development environment.

## Install

```bash
git clone https://github.com/bbquercus/dotfiles.git ~/Github/dotfiles
cd ~/Github/dotfiles

sh ./brew.sh      # Install packages
sh ./install.sh   # Setup shell environment
sh ./macos.sh     # Configure macOS (optional)

stow -v -t ~ . # Link dotfiles
```

## Post-install

- Run `p10k configure` for prompt customization
- Open vim and run `:PluginInstall`
- Import `One Dark.terminal` in Terminal preferences

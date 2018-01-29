
#https://wrotenwrites.com/a_modern_terminal_workflow_1/
#!/bin/bash

brew install zsh tmux neovim ag python3 reattach-to-user-namespace 
brew tap caskroom/cask
brew cask install iterm2

brew tap caskroom/fonts
brew cask install font-fira-code

#default shell 
chsh -s /usr/local/bin/zsh

#install omzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#directories for nvim
mkdir -p ~/.config ~/.config/nvim

#nvim plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
pip3 install neovim

#symlinks
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/vimrc ~/.config/nvim/init.vim
 

alias vim="nvim"


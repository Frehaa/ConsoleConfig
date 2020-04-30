git clone git@github.com:Frehaa/dotfiles.git ~/.dotfiles
trash ~/.bashrc
ln -s ~/.dotfiles/.bashrc ~/.bashrc
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/.ghci ~/.ghci
vim +PluginInstall +qall


mkdir ~/.vim/
mkdir ~/.vim/bundle

sudo apt update 
sudo apt upgrade

# Vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 ./install.py --all

vim +PluginInstall +qall

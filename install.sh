#!/bin/sh
# directories
mkdir ~/Workspace
mkdir ~/GoogleDrive
mkdir ~/.vim/
mkdir ~/.vim/bundle

# Update & upgrade
sudo apt update
sudo apt upgrade
# Install
sudo apt install vim git texlive-full cmake python3-dev default-jdk python3-pip build-essential trash-cli keepass2 ubuntu-restricted-extras haskell-platform -y
# Update & upgrade
sudo apt update
sudo apt upgrade
# Get files
cd ~/Downloads/
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
wget -q https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.1335-amd64.deb
# add apt
sudo add-apt-repository "deb https://packages.microsoft.com/repos/vscode stable main"
# Update & install code
sudo apt update
sudo apt install code
# Vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 ./install.py --all
# Google Drive
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse -y
# Repos
ssh-keygen -t rsa -b 4096 -C "frehaa@hotmail.dk"
git config --global user.name "Frederik Haagensen"
git config --global user.email "frehaa@hotmail.dk"
# Pip 
pip3 install ipython

#!/bin/sh
# directories
mkdir ~/workspace
mkdir ~/.vim/
mkdir ~/.vim/bundle

# Update & upgrade
sudo apt update
sudo apt upgrade
# Install
sudo apt install vim git texlive-full cmake python3-dev build-essential trash-cli r-base gdebi-core keepass2 virtualenv htop libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 android-sdk 
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
# Update & install rstudio
sudo gdebi rstudio-*.deb 

mkdir ~/Downloads/
mkdir ~/Projects/

# Update & upgrade
sudo apt update
sudo apt upgrade
# Install
sudo apt install texlive-full cmake python3-dev python3-pip build-essential trash-cli ubuntu-restricted-extras haskell-platform -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 
pip3 install ipython

alias fsi="fsharpi"
alias fsc="fsharpc"
alias activate="source .env/bin/activate"
alias rm="rmtrash"
alias rmdir="rmtrash"
alias del="rmtrash"
alias work="cd ~/workspace/sequence-labelling/code/;~/.dotfiles/tmux_startup.sh"
alias pipll="pip list --format=columns"
alias venv="virtualenv -p python3 .env"
alias emulator="~/Android/Sdk/emulator/emulator @Nexus_5X_API_28_x86"
alias androidstudio="~/Android/android-studio/bin/studio.sh"
alias pytest="python tests.py"

function ktc { kotlinc "$1" -include-runtime -d "$2.jar"; }

export -f ktc


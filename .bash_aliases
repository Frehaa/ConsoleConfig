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
alias androidstudio="~/workspace/android-studio/bin/studio.sh"
alias pytest="python tests.py"
alias open="xdg-open"
alias gs="git status"
alias gp="git push"
alias gaa="git add ."
alias ga="git add"
alias gc="git commit -m"
alias unzipjp="unzip -O shift-jis"
alias coqide2="coqide -async-proofs off -async-proofs-command-error-resilience off"

function ktc { kotlinc "$1"; }

export -f ktc


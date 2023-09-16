alias fsi="fsharpi"
alias fsc="fsharpc"
alias activate="source .env/bin/activate"
alias rm="rmtrash"
alias rmdir="rmtrash"
alias del="rmtrash"
alias work="~/.dotfiles/tmux_startup.sh"
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
alias suu="sudo apt update && sudo apt upgrade -y"
alias unzipjp="unzip -O shift-jis"
alias coqide2="coqide -async-proofs off -async-proofs-command-error-resilience off"
alias test_mic="arecord -f cd - | aplay -"
alias python="/usr/bin/python3.9"
alias f="find . -name"
alias e="explorer.exe ."
function ktc { kotlinc "$1"; }
function watch_cmd_start { watchexec --no-ignore -w "./${1}" cmd.exe /C start '\\\\wsl$\\Ubuntu-20.04\\home\\frehaa\\workspace\\Teaching\\an_intro_to_algs\\media\\videos\\scene\\480p15\\'${1}; }

function kattis_rust { cargo new "${1}"; cd ${1}; curl -o samples.zip https://open.kattis.com/problems/${1}/file/statement/samples.zip; unzip samples.zip; trash samples.zip; }

export -f ktc
export -f watch_cmd_start
export -f kattis_rust

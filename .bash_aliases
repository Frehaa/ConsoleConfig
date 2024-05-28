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

function kattis_rust { cargo new "${1}"; cd ${1}; curl -o samples.zip https://open.kattis.com/problems/${1}/file/statement/samples.zip; unzip samples.zip; trash samples.zip; 
cd src; echo "use std::io::{self, BufRead};

fn main() {
    let stdin = io::stdin();
    for line in stdin.lock().lines().map(|l| l.unwrap()) {
        let nums: Vec<i64> = line.split_whitespace()
            .map(|num| num.parse().unwrap())
            .collect();
        let a = nums[0];
        let b = nums[1];
    }
}" > main.rs; cd ..;

}

function njp { mkdir "${1}"; cd ${1}; touch "${1}.js"; touch "${1}.html";
echo "<!DOCTYPE html>
<html>
<head>
<title>${1}</title>
<script src='${1}.js'></script>
<style>
</style>
</head>
<body onload='main()'>
<canvas id='canvas' width='1920' height='1080'></canvas>
</body>
</html>" > "${1}.html"; 
echo '"use strict";
const l = console.log;
const MOUSE_LEFT_BUTTON = 0
const MOUSE_MIDDLE_BUTTON = 1
const MOUSE_RIGHT_BUTTON = 2

function assert(condition, msg) {
    if (!condition) throw Error(msg)
}

const mouseState = {
    dragStartPosition: null, // 
    position: {x: 0, y: 0},
}

const drawSettings = {
    pointRadius: 5,
    canvas: null,
    canvasContex: null,
};


function draw(time) {
    const dt = time - draw.lastTime;
    draw.lastTime = time;

    const ctx = drawSettings.canvasContex;
    requestAnimationFrame(draw);
}

function main() {
    drawSettings.canvas = document.getElementById("canvas");
    drawSettings.canvasContex = drawSettings.canvas.getContext("2d");

    // Prevent right click from opening context menu
    document.addEventListener("contextmenu", e => e.preventDefault());
    document.addEventListener("mousemove", mouseMove);
    document.addEventListener("mousedown", mouseDown);
    document.addEventListener("mouseup", mouseUp);
    document.addEventListener("keydown", keyDown);
    document.addEventListener("keyup", keyUp);


    function mouseDown(e) {
        switch(e.button) {
            case MOUSE_LEFT_BUTTON: {            
            } break;
            case MOUSE_MIDDLE_BUTTON: {
            } break;
            case MOUSE_RIGHT_BUTTON: {
            } break;
            default: {}
        }
    }

    function mouseUp(e) {
        switch(e.button) {
            case MOUSE_LEFT_BUTTON: {
            } break;
            case MOUSE_MIDDLE_BUTTON: {
            } break;
        }
    }

    function keyDown(e) {
        switch (e.code) {
            case "KeyN": {
            } break;
            case "ShiftLeft": {
            }
        }
    }

    function keyUp(e) {
        switch (e.code) {
            case "ShiftLeft": {
            }
        }
    }
    function mouseMove(e) {
    }

    requestAnimationFrame(time => {
        draw.lastTime = time;
        draw(time);
    });
}' > "${1}.js";
cd ..;
}


export -f ktc
export -f watch_cmd_start
export -f kattis_rust
export -f njp

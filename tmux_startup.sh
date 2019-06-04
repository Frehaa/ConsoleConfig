cd ~/workspace/viewer
tmux new -s react-native -d 
tmux split-window -h 
tmux select-pane -t 0
tmux split-window -v 
tmux select-pane -t 0
tmux new-window
tmux split-window -h 
tmux split-window -v 
tmux select-pane -t 0
tmux split-window -v 
tmux select-pane -t 0
htop
tmux -2 attach -t react-native

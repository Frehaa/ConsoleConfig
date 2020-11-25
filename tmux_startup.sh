tmux new -s work -d 
tmux split-window -h 
tmux select-pane -t 0
tmux split-window -v 
tmux select-pane -t 0
tmux -2 attach -t work

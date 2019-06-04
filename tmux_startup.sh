cd ~/workspace/viewer
tmux new -s stream-viewer -d 
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
tmux -2 attach -t stream-viewer

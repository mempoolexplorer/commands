#!/bin/sh

rm ~/.dotfiles/.*.swp
rm ~/Documents/.*.swp

#
tmux new -s home -d 
tmux send-keys 'cd ~' C-m 'clear' C-m
#
tmux new -s bitcoind -d 
tmux send-keys 'cd ~/programas/bitcoin-0.21.1/bin' C-m 'clear' C-m './bitcoind &'
tmux split-window -v
tmux send-keys 'cd ~/programas/bitcoin-0.21.1/bin' C-m 'clear' C-m
tmux split-window -v
tmux send-keys 'cd ~/.bitcoin' C-m 
tmux send-keys 'clear' C-m
#
tmux new -s docker -d
tmux send-keys 'cd ~/git/commands' C-m 'clear' C-m
#
tmux new -s npm -d
tmux send-keys 'cd ~/git/mempool-explorer' C-m 'clear' c-m 'BROWSER=google-chrome npm start'
#
tmux new -s sshPi4 -d
tmux send-keys 'cd ~/git' C-m 'clear' C-m
tmux send-keys 'ssh ubuntu@pi4' C-m
#
tmux new -s sshLinode -d
tmux send-keys 'cd ~/git' C-m 'clear' C-m
tmux send-keys 'ssh root@mempoolexplorer.com' C-m
#
tmux new -s server -d
tmux send-keys 'cd ~/git' C-m 'clear' C-m
#For local network
#tmux send-keys 'ssh memserver@server' C-m
#For remote network
tmux send-keys 'ssh memserver@serverRemote -p 4446' C-m
#
tmux new -s vim -d 
tmux send-keys 'vim ~/.dotfiles/readme.md' C-m ':tabe ~/.dotfiles/initComputer.sh' C-m ':tabe ~/.dotfiles/txts/shortcuts.txt' C-m ':tabe ~/.dotfiles/txts/comandos-linux.txt' C-m ':tabe ~/.dotfiles/txts/tareas.txt' C-m ':tabe ~/.dotfiles/txts/vimCheatsheet.txt' C-m
#
tmux attach


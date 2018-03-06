#!/usr/bin/env bash

# compile new changes to the bash configuration file
alias sbash='source ~/.bashrc';

# quick cd ..
alias ..='cd ..';

# quick bureau
alias buro='cd ~/Desktop'; # TODO adapt to other env

# count all files in the current dir (sub dirs included)
alias countFiles='find . -type f | wc -l';

# easy grep
function trouve {
	echo ">>> pas besoin de quotes.";
	grep --color=auto -r $1;
	echo ">>> fini.";
}

# clean the terminal window
alias cl='clear';

# list files (hidden files included)
alias ll='ls -lA';

 # list only directories
alias folders='ls -d */';

# print the size of the directories
alias dirSize='du -sh *';

# print permissions in the current dir
alias perms='stat -c "%a %n" *';

# print all directories and subdirectories as a tree
alias treeDirs='tree -a -d .';

# mount external drives, etc (need configuration first)
alias mountData='sudo mount /data';

# calculatrice
alias calc='gcalccmd';

# todo list
alias todo='subl ~/Desktop/todo.txt';

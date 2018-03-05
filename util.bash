#!/usr/bin/env bash

alias sbash='source ~/.bashrc';

alias ..='cd ..';

alias buro='cd ~/Desktop'; # TODO adapt to other env

alias countFiles='find . -type f | wc -l';

function trouve {
	echo ">>> pas besoin de quotes.";
	grep --color=auto -r $1;
	echo ">>> fini.";
}

alias cl='clear';

alias ll='ls -lA';
alias folders='ls -d */'; # list only folders

alias dirSize='du -sh *';

alias perms='stat -c "%a %n" *';

alias treeDirs='tree -a -d .';

alias mountData='sudo mount /data';

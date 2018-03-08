#!/usr/bin/env bash

alias dcd='docker-compose down';
alias dcp='docker-compose pull';
alias dcu='docker-compose up';

alias dnp='docker network prune';
alias dnr='docker network rm $1';
function dnrAll { docker network rm $(docker network ls | grep "bridge" | awk '/ / { print $1 }\'); }
alias dnl='docker network ls';

alias dps='docker ps';

alias di='docker inspect $1';

#!/usr/bin/env bash

alias gs='git status';
alias gl='git log';

alias f5='git stash save';
alias f9='git stash pop';

# lemme push that fn branch
function pushNew { git push --set-upstream origin $1; }
function pushNewFt { git push --set-upstream origin feature/$1; }
function pushNewFx { git push --set-upstream origin bugfix/$1; }

alias gcan='git commit --amend --no-edit';

alias gcM='git checkout master';
alias gcD='git checkout develop';
function gcFt { git checkout feature/$1; }
function gcFx { git checkout bugfix/$1; }

# print current branch
alias b?='printf "On branch : "; git rev-parse --abbrev-ref HEAD;';

function gcp { git cherry-pick $1; }
function gcpc { git cherry-pick --continue; }
function gcpc { git cherry-pick --abort; }

alias gl='git log --oneline --graph';
alias gla='git log --abbrev-commit';
alias gll='git log';

alias gd='git diff';
alias gdLast='git diff HEAD^ HEAD';
alias gdLastDate='git status -s | while read mode file; do echo $mode $file $(stat -c %y $file); done';
alias gdLastFiles='git diff HEAD^ HEAD --name-only';
alias gdc='git diff --cached';
alias gdw='git diff -w';

function gdFiles { git diff-tree --no-commit-id --name-only -r $1; }
function gdFilesChangedBetween { git diff $1 $2 --name-only; }

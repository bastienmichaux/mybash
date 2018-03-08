#!/usr/bin/env bash

alias gs='git status';

alias gb='git branch';

# track origin branch
function trackOrigin { git branch --set-upstream-to=origin/$1; }

# better logs
alias gl='git log --oneline --graph';
alias gla='git log --abbrev-commit';
alias gll='git log';

# quick save / quick load
alias f5='git stash save';
alias f9='git stash pop'; # this can erase changes

# print current branch
alias b?='printf "On branch : "; git rev-parse --abbrev-ref HEAD;';

# useful diffs

alias gd='git diff';
alias gdc='git diff --cached'; # git diff only for stashed changes (changes not commited yet)
alias gdw='git diff -w'; # ignore whitespace (spaces, tabs), show differences only on characters

# print the last commit
alias gdLast='git diff HEAD^ HEAD';
# list the files changed by the last commit + the commit date
alias gdLastDate='git status -s | while read mode file; do echo $mode $file $(stat -c %y $file); done';
# list the files changed by the last commit
alias gdLastFiles='git diff HEAD^ HEAD --name-only';

# push a new branch, fast
function pushNew { git push --set-upstream origin $1; }
function pushNewFt { git push --set-upstream origin feature/$1; }
function pushNewFx { git push --set-upstream origin bugfix/$1; }

# add current changes to the latest commit, don't modify the commit message and force push
alias gacan='git add . && git commit --amend --no-edit && git push -f';
alias gcan='git commit --amend --no-edit && git push -f';

alias gcM='git checkout master';
alias gcD='git checkout develop';
function gcFt { git checkout feature/$1; }
function gcFx { git checkout bugfix/$1; }

# cherry-picking
function gcp { git cherry-pick $1; }
alias gcpc='git cherry-pick --continue';
alias gcpa='git cherry-pick --abort';

# use this function with a commit hash to list all files changed by the input commit 
function gdFiles { git diff-tree --no-commit-id --name-only -r $1; }
# use this function with 2 commit hashes to get the files modified between these 2 commits
function gdFilesChangedBetween { git diff $1 $2 --name-only; }

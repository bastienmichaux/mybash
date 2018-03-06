#!/usr/bin/env bash

# quick network checkup
alias wtfinternet='ping -q -w 1 -c 1 `ip r | grep default | cut -d ' ' -f 3` > /dev/null && echo ok || echo error';

# quick google search
function google { xdg-open "https://www.google.com/search?q=${1}"; }

# info about any file extension
function fileInfo { xdg-open "https://fileinfo.com/extension/$1"; }

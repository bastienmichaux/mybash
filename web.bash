#!/usr/bin/env bash

# quick google search
function google { xdg-open "https://www.google.com/search?q=${1}"; }

# info about any file extension
function fileInfo { xdg-open "https://fileinfo.com/extension/$1"; }

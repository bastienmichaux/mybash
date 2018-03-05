#!/usr/bin/env bash

function google { xdg-open "https://www.google.com/search?q=${1}"; }

# wtf is that file
function fileInfo { xdg-open "https://fileinfo.com/extension/$1"; }

#!/usr/bin/env bash

# TODO: functions => aliases

# npm
function npmDoc { npm home $1; }
function npmh { npm home $1; }
function npml { npm list; }
function npml0 { npm list --depth=0; }

# install a module locally
function npmi { npm install --save $1; } # and add it to package.json
function npmI { sudo npm install -i $1; }
function npmidev { npm install --save-dev $1; } # and add it to devDependencies in package.json
function npmIdev { npm install --save-dev $1; }

# install a module globally
function npmig { npm install -g $1; }
function npmIg { sudo npm install -g $1; }

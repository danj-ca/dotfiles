#!/bin/bash
#
# Note that the .bashrc is loaded for non-login shells... but OS X opens login shells by default in Terminal
# Explained [here](http://apple.stackexchange.com/a/99730/8823):
# > When bash is invoked as an interactive non-login shell, it reads .bashrc but not .bash_profile. 
# > When bash is invoked as an interactive login shell, it reads .bash_profile but not .bashrc.
# > Terminal and iTerm open new shells as login shells by default, so many OS X users just use .bash_profile 
# > as their personal configuration file. [But] For example tmux and the shell mode in Emacs open new shells 
# > as non-login shells though.
echo "Loading ${HOME}/.bashrc"
#
# Define aliases, etc. in here, and we'll pull them into ~/.bash_profile as well
alias lsa='ls -lhaG'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
# Source kvm so we can run it from anywhere
source kvm.sh
source dnvm.sh
#-end

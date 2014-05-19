#!/bin/bash
#
# Note that the .bash_profile is loaded for login shells... but that's what OS X opens by default in Terminal
# Explained [here](http://apple.stackexchange.com/a/99730/8823):
# > When bash is invoked as an interactive non-login shell, it reads .bashrc but not .bash_profile. 
# > When bash is invoked as an interactive login shell, it reads .bash_profile but not .bashrc.
# > Terminal and iTerm open new shells as login shells by default, so many OS X users just use .bash_profile 
# > as their personal configuration file. [But] For example tmux and the shell mode in Emacs open new shells 
# > as non-login shells though.
#
echo "Loading ${HOME}/.bash_profile"
#
# As per [this SO answer](http://stackoverflow.com/a/902955/238688):
# source ~/.profile # Can put paths in here if you use other shells besides bash and want them universally available
source ~/.bashrc # Define aliases in here (i.e. for non-login shells) and pull them in for login shells as well
#
#-end

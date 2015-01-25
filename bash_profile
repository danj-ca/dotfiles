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

# Stick local bin before usr/bin to guarantee binaries I install override system-installed (recommendation from Homebrew)
export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin'

# Set up rbenv hooks
eval "$(rbenv init -)"

# Add the default KRE executables to PATH
kvm use default

# Put a Cthulhu in your shell, per [this](http://notes.torrez.org/2013/04/put-a-burger-in-your-shell.html)
# The bits between \[ and \] modify the title bar, per [this](http://www.ibm.com/developerworks/linux/library/l-tip-prompt/)
export PS1="\[\e]2;\u@\h:\w\a\]\W 🐙  "
#
#-end

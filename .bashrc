# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific aliases and functions
. ~/nvm/nvm.sh

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

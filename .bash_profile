#!/bin/bash
# Last modified $Id$
# $HeadURL$
# -*- sh-mode -*-

. ~/.alias
export EDITOR=emacsclient
export GIT_PAGER=

# .bash_profile

# http://www.mail-archive.com/bug-bash@gnu.org/msg01691.html
# stty lnext ^Q stop undef
# stty lnext undef

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs

unset USERNAME

# http://mah.everybody.org/docs/ssh#gen-keys
SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
    eval `$SSHAGENT $SSHAGENTARGS`
    trap "kill $SSH_AGENT_PID" 0
fi



if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
    # required?
    # . /opt/local/etc/bash_completion.d/git-completion
fi

export MANPATH=$MANPATH:/opt/local/share/man:/opt/local/man:/usr/share

##
# Your previous /Users/admin/.bash_profile file was backed up as /Users/admin/.bash_profile.macports-saved_2010-06-30_at_21:53:54
##

# MacPorts Installer addition on 2010-06-30_at_21:53:54: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


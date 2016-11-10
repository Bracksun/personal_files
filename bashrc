# Generic $dotdir/bashshrc
# Engineering Services (ES)
#
##
# Things the user might wish to set.
export USER_PATH="~/bin"			# Extra paths.
export EDITOR=vi				# Preferred editor.
export PRINTER=lp				# Preferred printer.
export NNTPSERVER=usenet.cisco.com		# Preferred news server.

##
# Should the full environment be set up even for non-interactive shells?
# Probably not but here is a variable to control it.
export FULLENV=false				# 'true' or 'false'

##
# Should all paths (even NFS, which might hang) be set up at login?
# The alias "fullpath" is available to setup your full path.  It can
# also be used to change your path by changing USER_PATH above.
export FULLPATH=true				# 'true' or 'false'

###########################################################################
# Everything above this line helps configure the environment.

# This line should not be removed.
dotdir=~/.files; [ -f $dotdir/sys_bashrc ] && . $dotdir/sys_bashrc
[ $FULLENV != "true" ] && [ -z "$PS1" ] && return

###########################################################################
# Everything below this line is run for interactive shells.
# If you wish the full environment even in non-interactive
# shells set FULLENV above to 'true'.

source ~/.git-prompt.sh
umask 022                        # no write by group or other
export autologout=0              # disable autologout
export FIGNORE=".o"              # don't complete .o files
export HISTFILE=~/.bash_history  # history file
export HISTFILESIZE=500          # history file size
export HISTSIZE=128              # save last 128 commands
export ignoreeof=10              # disable ^D for logout (up to 10)
set -C                           # disable redirect overwrite
set -b                           # enable immediate job notify
#export PS1="\h:\u\e[0;33m\]\$(__git_ps1)\e[0m\] $ "            # shell prompt format
export PS1="\h:\u\$(__git_ps1) $ "            # shell prompt format

##
# Source other rc files after this line.
[ -f ~/.bashrc_LOB ] && . ~/.bashrc_LOB
[ -f ~/.bashrc_BU ] && . ~/.bashrc_BU
[ -f ~/.bashrc_USER ] && . ~/.bashrc_USER

alias ctags='~/myApps/bin/ctags'

export PATH=/users/wenbsun/myApps/bin:/auto/binos-tools/bin:/usr/atria/bin:/router/bin:/usr/cisco/bin:/usr/cisco/etc:${PATH}:/usr/cisco/bin
export CSCOPE_EDITOR=vim

alias ls='ls --color'
alias ll='ls -l --color'
alias vi='vim'
alias mkdiff='acme diff -opts "pC5"'
alias gdbnew='/router/bin/gdb-7.8.2'
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n` 
[ -f ~/.ssh-agent-$HOSTNAME ] && source ~/.ssh-agent-$HOSTNAME

#HOSTNAME=$(hostname)
if [ `hostname` == "ott-ads-219" ]; then
   # For LLVM
    export LD_LIBRARY_PATH=/nobackup/wenbsun/gcc.c4.9.2-p0/lib64:$LD_LIBRARY_PATH
    export PATH=/nobackup/wenbsun/llvm_36/Release+Asserts/bin/:$JAVA_HOME/bin:$PATH:/auto/gsg-sw/inst/share/bin
fi

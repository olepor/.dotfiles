export PATH=/usr/local/bin:$PATH
export USER="olepor"
export PATH=${PATH}:/Volumes/MATLAB_R2015b/MATLAB_R2015b.app/bin
PATH=$PATH:~/bash_scripts
export PATH

# Set the prompt to show the path-to-cur-dir: cur-dir: $: 
PS1='\w : \W : \$ : '

# make vi-binding the standard -- also enabled in .inputrc
set -o vi

# brew alias, so that terminal runs the newest emacs version
alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app/Contents/MacOS/Emacs"

alias vim='mvim'

# Navigation aliases alias ..="cd .."

alias ..2="cd ../.."

alias ..3="cd ../../.."

test -r /sw/bin/init.sh && . /sw/bin/init.sh
CDPATH=~/.paths

# Everytime a new terminal is loaded, update the brew_installs file
brew_track_files

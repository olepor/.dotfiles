export PATH=/usr/local/bin:$PATH
export USER="olepor"
export PATH=${PATH}:/Volumes/MATLAB_R2015b/MATLAB_R2015b.app/bin
PATH=$PATH:~/bash_scripts
export PATH

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# run the linking from dot files at every login
# First pull
git -C ~/dotfiles pull
~/dotfiles/bash_scripts/symlink_dotfiles 

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
# now migrated to a brewfile. Check out https://github.com/Homebrew/homebrew-bundle

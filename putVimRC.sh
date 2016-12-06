#!/bin/bash
#putVimRC.sh: Script to put the vimrc in the home dir
#Created: Tue Dec  6 10:47:44 CST 2016
mv ~/.vimrc ~/.vimrcOld 2>/dev/null
thisDir=$(pwd)
cd ~ && ln -s $thisDir/.vimrc ~/.vimrc

exit 0

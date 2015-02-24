#! /bin/bash
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets.backup
mv ~/Library/Developer/Xcode/UserData/FontAndColorThemes ~/Library/Developer/Xcode/UserData/FontAndColorThemes.backup
mv ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins.backup

SRC_HOME=`pwd`
ln -s ${SRC_HOME}/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets
ln -s ${SRC_HOME}/FontAndColorThemes ~/Library/Developer/Xcode/UserData/FontAndColorThemes
ln -s ${SRC_HOME}/Plug-ins ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins

#install vundle (vim plugin manager)
#mkdir .vim
#touch .vimrc (copy from git)
git clone https://github.com/woshizilong/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "done"


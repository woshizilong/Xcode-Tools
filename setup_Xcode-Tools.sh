#! /bin/bash
mv ~/Library/Developer/Xcode/UserData/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets.backup
mv ~/Library/Developer/Xcode/UserData/FontAndColorThemes ~/Library/Developer/Xcode/UserData/FontAndColorThemes.backup
mv ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins.backup

SRC_HOME=`pwd`
ln -s ${SRC_HOME}/CodeSnippets ~/Library/Developer/Xcode/UserData/CodeSnippets
ln -s ${SRC_HOME}/FontAndColorThemes ~/Library/Developer/Xcode/UserData/FontAndColorThemes
ln -s ${SRC_HOME}/Plug-ins ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins

#echo "install newversion vim"
#brew install vim
#alias vim='/usr/local/Cellar/vim/7.4.488/bin'

#echo "install vundle (vim plugin manager)"
#mkdir .vim
#touch .vimrc (copy from git)
#git clone https://github.com/woshizilong/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#echo "install YouCompleteMe"
#brew install cmake
#cd ~/.vim/bundle/YouCompleteMe
#./install.sh --clang-completer

#升级Xcode6.3插件失效解决办法
#1.打开终端，输入以下命令   【最后一项是获取到的DVTPlugInCompatibilityUUID】
#find ~/Library/Application\ Support/Developer/Shared/Xcode/Plug-ins -name Info.plist -maxdepth 3 | xargs -I{} defaults write {} DVTPlugInCompatibilityUUIDs -array-add `defaults read /Applications/Xcode.app/Contents/Info.plist DVTPlugInCompatibilityUUID`

#2.如果没起作用将所有插件移除Plug-ins目录，重启Xcode后关闭，再将所有插件移回Plug-ins目录,重启Xcode，提示框中选择Load

echo "done"


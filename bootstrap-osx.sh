#!/bin/bash

PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install iTerm theme
# open app/iTerm/monokai.itermcolors

# link iTerm settings
ln -is $PWD/app/iTerm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# install font
cp -i font/SourceCodePro-1.017/*.otf ~/Library/Fonts

# link Sublime Text 3 settings
ln -is $PWD/app/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# install 
brew install coreutils ack git tmux reattach-to-user-namespace tree watch

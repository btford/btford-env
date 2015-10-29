#!/bin/bash

PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install iTerm theme
# open app/iTerm/monokai.itermcolors


# install font
# cp -i font/SourceCodePro-1.017/*.otf ~/Library/Fonts

# install homebrew
mkdir $HOME/.homebrew && curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew

# install 
brew install coreutils ack git tmux reattach-to-user-namespace tree watch

# install dart
# via https://www.dartlang.org/downloads/mac.html
brew tap dart-lang/dart
brew install dart --with-content-shell --with-dartium
brew linkapps dart

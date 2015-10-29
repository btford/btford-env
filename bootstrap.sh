#!/bin/bash

OS=`uname`
PWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# link zsh config
ln -is $PWD/zsh/.zshrc ~/.zshrc

# link dir colors
ln -is $PWD/.dircolors ~/.dircolors

# link git configs
ln -is $PWD/git/.gitconfig ~/.gitconfig
ln -is $PWD/git/.gitignore_global ~/.gitignore_global

# link tmux config
ln -is $PWD/.tmux.conf ~/.tmux.conf

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash

if [[ $OS == 'Darwin' ]]; then
  ./bootstrap-osx.sh
fi

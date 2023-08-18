#!/usr/bin/env bash

# This script aims to setup the macOS development environment.

sudo -v

dev="$HOME/Developer"
mkdir -p $dev

# Sync dotfiles
read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rsync --exclude ".git/" \
        --exclude "etc/" \
        --exclude ".DS_Store" \
        --exclude "install.sh" \
        --exclude "sdkman.sh" \
        --exclude "brew.sh" \
        --exclude "macos.sh" \
        --exclude "README.md" \
        -avh --no-perms . ~;
fi;

# Generate SSH keys
pub=$HOME/.ssh/id_rsa.pub
if [[ -f $pub ]]; then
    echo 'SSH key is already exists, no need to generate..'
else
    ssh-keygen -t rsa -b 4096 -C "hasanguner07@gmail.com"
    echo 'Generating SSH Key..'
fi

if [[ `uname` == 'Darwin' ]]; then
    # Install Brew
    xcode-select --install
    which -s brew
    if [[ $? != 0 ]]; then
        echo 'Installing Homebrew...'
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    # To fix `__git_ps1: command not found`
    git_prompt=$(brew --prefix)/etc/bash_completion.d/git-prompt.sh
    [[ -f $git_prompt ]] || curl -o $git_prompt \
        https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh

    echo 'Installing SDKMAN!..'
    sh sdkman.sh
    echo 'Installing brew packages..'
    sh brew.sh
    echo 'Installing node version manager...'
    sh nvm.sh
    echo 'Configuring MacOS..'
    sh macos.sh

    vundle=~/.vim/bundle/Vundle.vim
    if [[ -d $vundle ]]; then
        echo 'Vundle.vim already exists, no need to download..'
    else
        echo 'Installing Vundle Vim plug-in manager'..
        git clone https://github.com/VundleVim/Vundle.vim.git $vundle
    fi
    vim +PluginInstall +qall

    [[ -f $HOME/Library/Fonts/Monaco\ for\ Powerline.otf ]] || open etc/Monaco\ for\ Powerline.otf
    open etc/onedark.itermcolors

    osascript -e 'tell app "loginwindow" to «event aevtrrst»'

fi

source ~/.bash_profile

echo 'Installation complete.'


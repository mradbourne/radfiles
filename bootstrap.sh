#!/usr/bin/env bash

# Set up stow
if ! command -v stow &> /dev/null; then
    echo "stow not found, installing..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if ! command -v brew &> /dev/null; then
            echo "brew not found. Please install homebrew first."
            exit 1
        fi
        brew install stow
    elif [[ -f /etc/debian_version ]]; then
        sudo apt-get update && sudo apt-get install -y stow
    elif [[ -f /etc/redhat-release ]]; then
        sudo yum install -y stow
    else
        echo "Unsupported OS. Please install stow manually."
        exit 1
    fi
fi
stow stowfiles

# Source .bash_profile-extra and .bashrc-extra, which are the entry points for all other dotfiles
if [ ! -f ~/.bash_profile ]; then
    echo ". ~/.bash_profile-extra" > ~/.bashrc
else
    echo "You already have a .bash_profile file. Please add '. ~/.bash_profile-extra' to it."
fi
if [ ! -f ~/.bashrc ]; then
    echo ". ~/.bashrc-extra" > ~/.bashrc
else
    echo "You already have a .bashrc file. Please add '. ~/.bashrc-extra' to it."
fi

echo "Consider installing pyenv"
echo "Done!"

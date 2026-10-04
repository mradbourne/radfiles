#!/usr/bin/env bash

# Install a package with the platform's package manager
install_package() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if ! command -v brew &> /dev/null; then
            echo "brew not found. Please install homebrew first."
            exit 1
        fi
        brew install "$1"
    elif [[ -f /etc/debian_version ]]; then
        sudo apt-get update && sudo apt-get install -y "$1"
    elif [[ -f /etc/redhat-release ]]; then
        sudo yum install -y "$1"
    else
        echo "Unsupported OS. Please install $1 manually."
        exit 1
    fi
}

# Set up zsh, the interactive shell these dotfiles configure
if ! command -v zsh &> /dev/null; then
    echo "zsh not found, installing..."
    install_package zsh
fi

# Set up stow
if ! command -v stow &> /dev/null; then
    echo "stow not found, installing..."
    install_package stow
fi
stow stowfiles

# Source .zshrc-extra, which is the entry point for all other dotfiles.
# A missing or empty ~/.zshrc is written; an existing one is left for you to edit.
if [ ! -s ~/.zshrc ]; then
    echo ". ~/.zshrc-extra" > ~/.zshrc
elif ! grep -qF ". ~/.zshrc-extra" ~/.zshrc; then
    echo "You already have a .zshrc file. Please add '. ~/.zshrc-extra' to it."
fi

# Changing the login shell needs a password, so it is left to you
if [[ "$(basename "$SHELL")" != "zsh" ]]; then
    echo "Your login shell is $SHELL. Switch to zsh with: chsh -s \"$(command -v zsh)\""
fi

echo "Consider installing pyenv"
echo "Done!"

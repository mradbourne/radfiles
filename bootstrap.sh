#!/usr/bin/env bash
if ! command -v stow &> /dev/null; then
    echo "stow not found, installing..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
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

if [ ! -f ~/.bashrc ]; then
    echo "source ~/.bashrc-extra" > ~/.bashrc
fi

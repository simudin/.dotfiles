#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    alacritty --config-file /path/to/linux/alacritty.toml
elif [[ "$OSTYPE" == "darwin"* ]]; then
    alacritty --config-file /path/to/macos/alacritty.toml
else
    echo "Unknown OS"
fi

# TODO: call this script in zshrc so it will load alacritty based on OS

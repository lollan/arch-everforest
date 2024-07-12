#!/bin/bash

DOTFILES_DIR="$(pwd)"
CONFIG_DIR="$HOME/.config"

# Create the config directory if it doesn't exist
mkdir -p "$CONFIG_DIR"

# Iterate through all files and directories in the dotfiles directory
for item in "$DOTFILES_DIR"/*; do
    # Extract the base name of the file or directory
    base_item=$(basename "$item")
    
    # Create a symlink in the $HOME/.config/ directory
    ln -s "$item" "$CONFIG_DIR/$base_item"
done

echo "Symlinking complete!"


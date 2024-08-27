#!/usr/bin/env bash

# Prompt user to enable LSP
read -p "Do you want to enable LSP? (y/n): " enable_lsp

# Set up Neovim configuration
rm -rf ~/.config/nvim
ln -s $(pwd) ~/.config/nvim

# Check user's input and delete lsp.lua if LSP is not enabled
if [[ "$enable_lsp" =~ ^[Yy]$ ]]; then
  echo "LSP is enabled."
else
  echo "LSP is not enabled. Removing lua/mynvim/lazy/lsp.lua."
  rm -f $(pwd)/lua/mynvim/lazy/lsp.lua
fi

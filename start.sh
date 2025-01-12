#!/usr/bin/env bash

read -p "Do you want to enable LSP? (y/n): " enable_lsp

rm -rf ~/.config/nvim
ln -s $(pwd) ~/.config/nvim

if [[ "$enable_lsp" =~ ^[Yy]$ ]]; then
  echo "LSP is enabled."
else
  echo "LSP is not enabled. Removing lua/mynvim/lazy/lsp.lua."
  rm -f $(pwd)/lua/mynvim/lazy/lsp.lua
fi

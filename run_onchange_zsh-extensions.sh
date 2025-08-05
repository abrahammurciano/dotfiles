#!/usr/bin/env bash

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
P10K_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
rm -rf "$P10K_DIR"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"

# Zsh Autosuggestions
ZSH_AUTOSUGGESTIONS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
rm -rf "$ZSH_AUTOSUGGESTIONS_DIR"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_AUTOSUGGESTIONS_DIR"

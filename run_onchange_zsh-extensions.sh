#!/usr/bin/env bash

function install-zsh-extension() {
	local name="$1"
	local url="$2"
	local dir="$3"
	local dest="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/$dir/$name"
	if [ ! -d "$dest" ]; then
		echo "Installing $name..."
		git clone "$url" "$dest"
	fi
}

# Oh My Zsh
[ -d "$HOME/.oh-my-zsh" ] || sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
install-zsh-extension "powerlevel10k" "https://github.com/romkatv/powerlevel10k.git" "themes"

# Zsh Autosuggestions
install-zsh-extension "zsh-autosuggestions" "https://github.com/zsh-users/zsh-autosuggestions" "plugins"

# Zsh Syntax Highlighting
install-zsh-extension "zsh-syntax-highlighting" "https://github.com/zsh-users/zsh-syntax-highlighting.git" "plugins"
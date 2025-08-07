#!/usr/bin/env bash

mkdir -p ~/.config/tmux/plugins

function install_tmux_plugin() {
	local name="$1"
	local url="$2"

	if [ -d ~/.config/tmux/plugins/"$name" ]; then
		if ! find ~/.config/tmux/plugins/"$name"/.updated -maxdepth 0 -mtime -7 2>/dev/null | grep -q .; then
			echo "Updating $name..."
			git -C ~/.config/tmux/plugins/"$name" pull
			touch ~/.config/tmux/plugins/"$name"/.updated
		fi
	else
		echo "Installing $name..."
		git clone "$url" ~/.config/tmux/plugins/"$name"
	fi
}

install_tmux_plugin "tpm" "https://github.com/tmux-plugins/tpm"
install_tmux_plugin "catppuccin" "https://github.com/catppuccin/tmux.git"
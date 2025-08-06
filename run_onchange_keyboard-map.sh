#!/usr/bin/env bash
[ -f ~/.config/systemd/user/keyboard-map.service ] && systemctl --user enable --now keyboard-map.service
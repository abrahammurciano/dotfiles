# My dotfiles

These are my personal dotfiles, managed with chezmoi.

## Installation

First install [chezmoi](https://chezmoi.io/).

Then run the following command to install my dotfiles:

```sh
chezmoi init --apply git@github.com:abrahammurciano/dotfiles.git
```

## Adding a new config file

### From within the repo

1. Create the file in the chezmoi source directory (`~/.local/share/chezmoi/`), using the [chezmoi naming convention](https://www.chezmoi.io/reference/source-state-attributes/) (e.g. `dot_config/zsh/zshrc.d/omz.zsh` maps to `~/.config/zsh/zshrc.d/omz.zsh`).
2. Apply the file to your local config:
   ```sh
   chezmoi apply
   ```
3. Commit and push:
   ```sh
   cd ~/.local/share/chezmoi
   git add .
   git commit -m "Add omz.zsh"
   git push
   ```

### From local config

1. Write the file directly at its real location (e.g. `~/.config/zsh/zshrc.d/omz.zsh`).
2. Add it to chezmoi:
   ```sh
   chezmoi add ~/.config/zsh/zshrc.d/omz.zsh
   ```
3. Commit and push:
   ```sh
   cd ~/.local/share/chezmoi
   git add .
   git commit -m "Add omz.zsh"
   git push
   ```

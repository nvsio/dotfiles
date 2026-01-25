# dotfiles

Personal dotfiles for nvs.

## Install

```bash
git clone https://github.com/nvsio/dotfiles.git ~/Code/nvsio/dotfiles
cd ~/Code/nvsio/dotfiles
./install.sh
```

Then add to your `~/.zshrc`:
```bash
source ~/Code/nvsio/dotfiles/zsh/zshrc
```

## What's included

- **ghostty** - Terminal config with tmux keybinds (cmd+t, cmd+d, cmd+w)
- **zsh** - Aliases, functions, history search, syntax highlighting
- **tmux** - Ctrl+A prefix, vim-tmux-navigator, mouse mode
- **git** - Delta pager for beautiful diffs, global gitignore

## Dependencies

```bash
brew install neovim tmux git-delta zsh-syntax-highlighting zsh-autosuggestions fzf ripgrep zoxide mcfly eza thefuck
```

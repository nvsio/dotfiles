# Claude Code Context

This is nvs's personal dotfiles repository.

## Structure

- `ai/` - Claude Code instructions (claude.md, agents.md)
- `ghostty/` - Ghostty terminal config
- `zsh/` - Zsh configuration (zshrc + prompt files)
- `tmux/` - Tmux configuration
- `git/` - Git config and global gitignore
- `bin/` - Helper scripts (battery, tmux-launch)
- `scripts/` - Tool installation scripts
- `secrets/` - Private credentials and keys (gitignored)
- `install.sh` - Symlink installer script

## Private files

Files prefixed with `--` are private and gitignored (e.g., `--nvs.md`).
The `secrets/` folder is for API keys, credentials, and other sensitive data.

## Scripts requirement

**IMPORTANT:** When adding or modifying tools/dependencies in dotfiles:

1. Check if an install script exists in `scripts/`
2. If not, create one before committing
3. Update `scripts/install-all.sh` if adding a new tool
4. If skipping script creation, must get explicit user approval

This ensures all tools used by dotfiles can be installed reproducibly.

## Git commits

**NEVER** add Co-Authored-By or any AI credit (Claude, OpenAI, Copilot, etc.) in commit messages.

## Key conventions

- Uses `~/.dotfiles/` as symlink target directory
- Zsh config is sourced, not symlinked directly
- Supports both Intel (`/usr/local`) and Apple Silicon (`/opt/homebrew`) Macs

## Bash Guidelines

**NEVER** use `rm -rf`. Use safe alternatives like `trash` or explicit file removal.

**AVOID** home directory (`~/`) and recursing above `~/Code/` unless given explicit instructions and full disk access.

### IMPORTANT: Avoid commands that cause output buffering issues

- DO NOT pipe output through `head`, `tail`, `less`, or `more` when monitoring or checking command output
- DO NOT use `| head -n X` or `| tail -n X` to truncate output - these cause buffering problems
- Instead, let commands complete fully, or use `--max-lines` flags if the command supports them
- For log monitoring, prefer reading files directly rather than piping through filters

### When checking command output:

- Run commands directly without pipes when possible
- If you need to limit output, use command-specific flags (e.g., `git log -n 10` instead of `git log | head -10`)
- Avoid chained pipes that can cause output to buffer indefinitely

## Hooks

Prefer using Claude Code hooks for automation. Configure hooks in `.claude/settings.json`.

### Async hooks

For logging, notifications, or side-effects that shouldn't slow things down, use async hooks:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Bash",
        "command": "your-logging-script.sh",
        "async": true
      }
    ]
  }
}
```

Setting `async: true` runs the hook in the background without blocking Claude Code's execution.

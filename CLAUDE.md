# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository containing macOS configuration files for various tools and applications. The repository serves as a backup and synchronization mechanism for personal development environment settings.

## Key Configuration Areas

### Shell Environment
- **Primary shell configuration**: `.bash_profile` - main shell configuration with custom prompt, environment variables, and tool paths
- **Aliases**: `.bash_aliases` - extensive collection of shortcuts for common commands, git operations, AWS CLI, and navigation
- **Functions**: `.bash_functions` - custom bash functions for git operations, AWS tasks, and system utilities
- **Key aliases to know**:
  - `v`, `vi`, `vim` → `nvim` (all point to Neovim)
  - `gts`, `gtd`, `gta`, `gtc` → git status, diff, add, commit shortcuts
  - `repos` → navigate to ~/Repos directory
  - `dot` → navigate to dotfiles directory

### Editor Configurations

#### Neovim (Primary Editor)
- **Main config**: `.config/nvim/init.lua` - Based on Kickstart.nvim with custom modifications
- **Key features**: LSP integration, Telescope fuzzy finder, Git integration, Copilot support
- **Custom keymaps**: `jk` to exit insert mode and save, `<leader>pv` for file explorer
- **Plugins**: Dracula theme, undotree, prettier, tailwind-sorter, telescope, treesitter, blink.cmp
- **Multiple nvim configs available**: nvim-astro, nvim-lazy, nvim-personal, nvim-theprimeagen

#### Other Editors
- **Doom Emacs**: Configuration in `.config/doom/` with init.el, config.el, packages.el
- **Alacritty Terminal**: Configuration in `.config/alacritty/alacritty.toml` with Dracula theme

### Window Management
- **AeroSpace**: Tiling window manager configuration in `.config/aerospace/aerospace.toml`
- **Workspaces**: A-Z and 1-9 workspaces with app-specific assignments
- **Key bindings**: Alt+hjkl for navigation, Alt+Shift+hjkl for moving windows
- **App assignments**: Browsers → B, Terminals → T, Code editors → C, Music → M, etc.

## Development Workflow

### No Build/Test Commands
This repository contains configuration files only - there are no build, test, or lint commands to run. Changes are typically:
1. Edit configuration files directly
2. Source/reload configurations (e.g., `source ~/.bash_profile`)
3. Restart applications to pick up new configurations

### Git Workflow
- Uses custom git aliases and functions for common operations
- `git-status` function checks status across all repos in ~/Repos
- `git-sync` function auto-commits and syncs all repos
- Standard workflow: edit configs → test locally → commit changes

### Environment Variables
- **VAULT_PATH**: Points to encrypted vault directory (platform-specific)
- **EDITOR/VISUAL**: Set to nvim
- **PATH**: Customized with Homebrew, Python, and development tools priority
- **NVM**: Node Version Manager integration for Node.js development

## File Organization

### Configuration Structure
```
.config/
├── aerospace/          # Window manager
├── alacritty/         # Terminal emulator  
├── doom/              # Doom Emacs
├── nvim*/             # Multiple Neovim configurations
```

### Shell Configuration
```
.bash_profile          # Main shell configuration
.bash_aliases          # Command shortcuts
.bash_functions        # Custom functions
```

## Important Notes

### Multiple Neovim Configs
The repository contains several Neovim configurations:
- `nvim/` - Primary config (Kickstart-based)
- `nvim-astro/` - AstroNvim distribution
- `nvim-lazy/` - LazyVim distribution  
- `nvim-personal/` - Custom personal config
- `nvim-theprimeagen/` - ThePrimeagen's config

### Platform Considerations
- Primarily configured for macOS (Darwin)
- Some WSL-specific utilities (clock sync functions)
- Homebrew package manager integration
- Path configurations assume macOS directory structure

### Security Features
- Vault encryption/decryption functions (`evt`/`dvt`)
- AWS SSO integration and CLI shortcuts
- Zscaler VPN control functions

## Common Operations

### Reload Configurations
- `source ~/.bash_profile` or `b` alias
- Restart terminal/applications for some changes
- `:source ~/.config/nvim/init.lua` in Neovim

### Navigate Key Directories
- `repos` - Go to ~/Repos
- `dot` - Go to dotfiles directory  
- `vault` - Go to encrypted vault directory

### Development Tools
- `py` - Python 3
- `pn` - pnpm package manager
- `doom` - Doom Emacs
- Various AWS CLI shortcuts and functions
# Neovim - VS Code-like Configuration

A Neovim configuration designed to closely replicate VS Code's experience with familiar keyboard shortcuts and UI elements.

## Quick Start

```bash
# Clone and run setup
git clone https://github.com/your-repo/nvim-vscode-like.git ~/.config/nvim
cd ~/.config/nvim
./install.sh

# Or manually
nvim +'PackerSync' +qa
```

## VS Code-style Keybindings (macOS)

| Key | Action |
|-----|--------|
| `Cmd+S` | Save |
| `Cmd+W` | Close buffer |
| `Cmd+P` | Quick open (file picker) |
| `Cmd+Shift+P` | Command palette |
| `Cmd+F` | Search in files |
| `Cmd+B` | Toggle file explorer |
| `Cmd+D` | Go to definition |
| `Cmd+Shift+D` | Find references |
| `Cmd+R` | Rename symbol |
| `Cmd+Shift+F` | Format document |
| `Cmd+/` | Toggle comment |
| `Cmd+Shift+G` | Git diff view |
| `Cmd+K Z` | Zen mode |
| `Cmd+\`` | Toggle terminal |
| `Cmd+\` | Match brackets |

## Features

- **Auto-save**: Files save automatically on InsertLeave and BufLeave
- **Format on save**: LSP formatting triggers on every save
- **Breadcrumbs**: File path navigation bar (via nvim-navic)
- **Minimap**: Code overview window (via codewindow)
- **Bracket colors**: Colorized matching brackets
- **Git integration**: vim-fugitive + vgit for diff views
- **Zen mode**: Distraction-free writing

## Requirements

- Neovim >= 0.8.0
- Nerd Fonts v3.0.0+ (for icons)
- Node.js (for LSP support)
- Python3 + pynvim

## File Structure

```
nvim/
├── init.lua              # Main entry point
├── install.sh            # Setup script
├── lua/
│   └── user/
│       ├── options.lua   # Vim settings
│       ├── keymaps.lua   # Keybindings
│       ├── plugins.lua   # Plugin list
│       ├── colorscheme.lua
│       ├── cmp.lua       # Completion config
│       ├── telescope.lua # Fuzzy finder
│       ├── lsp/          # LSP configs
│       ├── breadcrumbs.lua
│       ├── minimap.lua
│       ├── rainbow.lua
│       ├── vgit.lua
│       └── zen.lua
```

## Key Plugins

| Plugin | Purpose |
|--------|---------|
| nvim-cmp | Completion engine |
| telescope.nvim | Fuzzy finder |
| nvim-lspconfig | Language servers |
| mason.nvim | LSP installer |
| gitsigns.nvim | Git gutter signs |
| vgit.nvim | Git diff UI |
| nvim-navic | Breadcrumbs |
| codewindow.nvim | Minimap |
| rainbow-delimiters | Bracket colors |
| zen-mode.nvim | Zen mode |

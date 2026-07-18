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
| `Ctrl+P` | Quick open (alternative, may conflict with shell history) |
| `Cmd+Shift+O` | Command palette |
| `Cmd+F` | Search in files |
| `Cmd+Shift+F` | Format document |
| `Cmd+H` | Find and replace |
| `Cmd+B` | Toggle file explorer |
| `Cmd+D` | Select next occurrence of word |
| `Cmd+Shift+L` | Select all occurrences of word |
| `Cmd+'` | Go to definition |
| `Cmd+Shift+'` | Find references |
| `Cmd+R` | Rename symbol |
| `Cmd+/` | Toggle comment |
| `Cmd+Shift+G` | Git diff view |
| `Cmd+K Z` | Zen mode |
| `Cmd+\`` | Toggle terminal |
| `Cmd+\` | Match brackets |

## Leader Keybindings

| Key | Action |
|-----|--------|
| `Space` | Leader key |
| `Ctrl+H/J/K/L` | Navigate windows |
| `Ctrl+Arrows` | Resize windows |
| `Shift+L/H` | Next/Previous buffer |
| `Alt+J/K` | Move line up/down |
| `jk/kj` | Exit insert mode |

## Native Vim Keybindings

### Normal Mode

| Key | Action |
|-----|--------|
| `h/j/k/l` | Navigate left/down/up/right |
| `w` | Next word |
| `b` | Previous word |
| `e` | End of word |
| `0` | Beginning of line |
| `$` | End of line |
| `gg` | First line |
| `G` | Last line |
| `/{pattern}` | Search forward |
| `?{pattern}` | Search backward |
| `n` | Next search match |
| `N` | Previous search match |
| `yy` | Yank (copy) line |
| `yiw` | Yank inner word |
| `yaw` | Yank word with trailing space |
| `p` | Paste after cursor |
| `P` | Paste before cursor |
| `x` | Delete character |
| `dd` | Delete (cut) line |
| `dw` | Delete word |
| `d$` | Delete to end of line |
| `u` | Undo |
| `Ctrl+r` | Redo |
| `.` | Repeat last command |
| `>>` | Indent line |
| `<<` | Dedent line |
| `==` | Auto-indent line |
| `%` | Jump to matching bracket |
| `zz` | Center cursor |
| `zt` | Top cursor |
| `zb` | Bottom cursor |

### Visual Mode

| Key | Action |
|-----|--------|
| `v` | Enter visual mode (character) |
| `V` | Enter visual mode (line) |
| `Ctrl+v` | Enter visual block mode |
| `o` | Go to other end of selection |
| `O` | Go to other end (block mode - other corner) |
| `y` | Yank selection |
| `d` | Delete (cut) selection |
| `p` | Paste over selection |
| `c` | Change selection |
| `u` | Lowercase selection |
| `U` | Uppercase selection |
| `>` | Indent selection |
| `<` | Dedent selection |

### Visual Mode Navigation

| Key | Action |
|-----|--------|
| `h/j/k/l` | Navigate left/down/up/right |
| `w/b` | Next/previous word |
| `}/{/` | Next/previous paragraph |
| `gg/G` | Go to top/bottom of file |
| `n/N` | Next/previous search match |

### Visual Mode Text Objects

| Key | Action |
|-----|--------|
| `vi{` | Select inside `{}` |
| `va{` | Select including `{}` |
| `vi(` / `va(` | Select inside/including `()` |
| `vi[` / `va[` | Select inside/including `[]` |
| `vi<` / `va<` | Select inside/including `<>` |
| `vi"` | Select inside double quotes |
| `vi'` | Select inside single quotes |
| `viw` | Select word |
| `vip` | Select paragraph |
| `v2j` | Select current + 2 lines down | |

### Insert Mode

| Key | Action |
|-----|--------|
| `i` | Enter insert mode |
| `a` | Enter insert mode after cursor |
| `A` | Enter insert mode at end of line |
| `I` | Enter insert mode at beginning of line |
| `o` | New line below |
| `O` | New line above |
| `jk` / `kj` | Exit insert mode |
| `Ctrl+u` | Delete line before cursor |
| `Ctrl+w` | Delete word before cursor |
| `Ctrl+y` | Copy char from line above |
| `Ctrl+e` | Copy char from line below |
| `Ctrl+r{reg}` | Paste from register (e.g., `+` for clipboard) |
| `Ctrl+o` | Execute one normal command, return |
| `Ctrl+a` | Insert previously inserted text |
| `Ctrl+t` | Indent line |
| `Ctrl+d` | Dedent line |

### Command Mode

| Key | Action |
|-----|--------|
| `:` | Enter command mode |
| `:w` | Save |
| `:q` | Quit |
| `:wq` / `:x` | Save and quit |
| `:q!` | Force quit |
| `:e {file}` | Open file |
| `:r {file}` | Insert file content |
| `:%s/old/new/g` | Replace all |
| `:set number` | Show line numbers |
| `:set hlsearch` | Highlight searches |

### Which-Key Groups

| Prefix | Action |
|--------|--------|
| `Space+a` | Alpha dashboard |
| `Space+b` | Buffers (Telescope) |
| `Space+e` | File explorer |
| `Space+w` | Save |
| `Space+q` | Quit |
| `Space+c` | Close buffer |
| `Space+f` | Find files |
| `Space+F` | Find text (live_grep) |
| `Space+g` | Git menu |
| `Space+gs` | Lazygit |
| `Space+gd` | Git diff |
| `Space+gv` | VGit diff view |
| `Space+l` | LSP menu |
| `Space+lf` | Format |
| `Space+lr` | Rename |
| `Space+la` | Code action |
| `Space+z` | Zen mode |
| `Space+zt` | Twilight |
| `Space+m` | Minimap menu |
| `Space+tm` | Toggle minimap |

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

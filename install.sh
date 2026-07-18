#!/usr/bin/env bash

set -e

NVIM_CONFIG_DIR="${HOME}/.config/nvim"
BACKUP_DIR="${HOME}/.config/nvim.backup.$(date +%Y%m%d%H%M%S)"

echo "Setting up VS Code-like Neovim config..."

# Backup existing config
if [ -d "$NVIM_CONFIG_DIR" ]; then
    echo "Backing up existing config to ${BACKUP_DIR}"
    mv "$NVIM_CONFIG_DIR" "$BACKUP_DIR"
fi

# Clone the repository
echo "Cloning repository..."
git clone https://github.com/LunarVim/Neovim-from-scratch.git "$NVIM_CONFIG_DIR"

# Enter config directory
cd "$NVIM_CONFIG_DIR"

# Install prerequisites check
echo "Checking prerequisites..."

# Node.js (for LSP)
if ! command -v node &> /dev/null; then
    echo "Warning: Node.js not found. Install from https://nodejs.org"
fi

# Python + pynvim
if command -v python3 &> /dev/null; then
    pip3 install pynvim 2>/dev/null || echo "Warning: Could not install pynvim"
fi

# Neovim version check
NVIM_VERSION=$(nvim --version | head -1 || echo "Not found")
echo "Neovim version: $NVIM_VERSION"

# Start neovim to trigger plugin installation
echo ""
echo "Starting Neovim to install plugins..."
echo "After plugins load, run :PackerSync if needed"
echo ""

# Start nvim in headless mode to install plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' +qa 2>/dev/null || true

echo ""
echo "Setup complete! Restart Neovim to use the config."
echo ""
echo "VS Code-style keybindings (Cmd on macOS):"
echo "  Cmd+S     - Save"
echo "  Cmd+W     - Close buffer"
echo "  Cmd+P     - Quick open"
echo "  Cmd+Shift+P - Command palette"
echo "  Cmd+F     - Search in files"
echo "  Cmd+B     - Toggle explorer"
echo "  Cmd+D     - Go to definition"
echo "  Cmd+Shift+G - Git diff view"
echo "  Cmd+K Z   - Zen mode"

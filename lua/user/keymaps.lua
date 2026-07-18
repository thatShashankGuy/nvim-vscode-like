local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.keymap.set

-- Leader key (use \\ so Cmd+\ works as secondary)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- VS Code-style Copy/Cut/Paste (Ctrl+Shift+C, Ctrl+Shift+X for terminal compatibility)
keymap("v", "<C-S-c>", '"+y', opts)  -- Copy to system clipboard
keymap("v", "<C-S-x>", '"+d', opts)  -- Cut to system clipboard
keymap("n", "<C-S-c>", '"+yy', opts) -- Copy line (normal mode)
keymap("n", "<C-S-x>", '"+dd', opts) -- Cut line (normal mode)
keymap("n", "<C-S-v>", '"+P', opts)  -- Paste before cursor (normal mode)
keymap("i", "<C-S-v>", '<C-r><C-o>+', opts) -- Paste in insert mode

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- VS Code-style keybindings (Cmd on macOS) --
-- Save
keymap("n", "<D-s>", ":w<CR>", opts)
keymap("i", "<D-s>", "<ESC>:w<CR>a", opts)
keymap("v", "<D-s>", "<ESC>:w<CR>", opts)

-- Close buffer
keymap("n", "<D-w>", ":Bdelete<CR>", opts)
keymap("i", "<D-w>", "<ESC>:Bdelete<CR>", opts)

-- Quick open (file picker like Cmd+P)
keymap("n", "<D-p>", ":Telescope find_files<CR>", opts)
keymap("i", "<D-p>", "<ESC>:Telescope find_files<CR>", opts)

-- Quick open alternative (Ctrl+P - may conflict with shell)
keymap("n", "<C-p>", ":Telescope find_files<CR>", opts)
keymap("i", "<C-p>", "<ESC>:Telescope find_files<CR>", opts)

-- Command palette like Cmd+Shift+O (to avoid conflict with Ghostty)
keymap("n", "<D-O>", ":Telescope commands<CR>", opts)

-- Search in files like Cmd+F
keymap("n", "<D-f>", ":Telescope live_grep<CR>", opts)
keymap("v", "<D-f>", ":Telescope live_grep<CR>", opts)

-- Find and replace like Cmd+H
keymap("n", "<D-h>", ":%s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>", opts)
keymap("v", "<D-h>", ":s/<C-r><C-w>/<C-r><C-w>/g<Left><Left>", opts)

-- Select next occurrence like Cmd+D
keymap("n", "<D-d>", "*N", opts)
keymap("n", "<D-d>", "viw<ESC>/<C-r><C-w><CR>N", opts)

-- Select all occurrences like Cmd+Shift+L
keymap("n", "<D-S-l>", ":<C-u>%s/<C-r><C-w>//g<Left><Left>", opts)
keymap("v", "<D-S-l>", ":s/<C-r>//<C-r>//g<Left><Left>", opts)

-- Toggle terminal like Cmd+`
keymap("n", "<D-`>", ":ToggleTerm<CR>", opts)
keymap("i", "<D-`>", "<ESC>:ToggleTerm<CR>", opts)

-- Toggle file explorer like Cmd+B
keymap("n", "<D-b>", ":NvimTreeToggle<CR>", opts)
keymap("i", "<D-b>", "<ESC>:NvimTreeToggle<CR>", opts)

-- Toggle comment like Cmd+/
keymap("n", "<D-/>", ":Commentary<CR>", opts)
keymap("v", "<D-/>", ":Commentary<CR>", opts)
keymap("i", "<D-/>", "<ESC>:Commentary<CR>", opts)

-- Go to definition (using Cmd+')
keymap("n", "<D-'>", ":lua vim.lsp.buf.definition()<CR>", opts)

-- Find references (using Cmd+Shift+')
keymap("n", "<D-S-'>", ":lua vim.lsp.buf.references()<CR>", opts)

-- Rename like F2
keymap("n", "<D-r>", ":lua vim.lsp.buf.rename()<CR>", opts)

-- Format document like Shift+Alt+F
keymap("n", "<D-Shift-f>", ":lua vim.lsp.buf.format({ async = true })<CR>", opts)
keymap("i", "<D-Shift-f>", "<ESC>:lua vim.lsp.buf.format({ async = true })<CR>a", opts)

-- Zen mode like Cmd+K Z
keymap("n", "<D-k><D-z>", ":ZenMode<CR>", opts)

-- Git status like Cmd+Shift+G
keymap("n", "<D-S-g>", ":lua require('vgit').toggle()<CR>", opts)

-- Bracket matching like Cmd+Shift+\ (VS Code original)
keymap("n", "<D-\\>", ":try | silent! normal! % | catch | endtry<CR>", opts)


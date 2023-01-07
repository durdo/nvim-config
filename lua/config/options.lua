-- Global leader.
vim.g.mapleader = ","

-- nvim-tree should be used as file navigator.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Show line number.
vim.opt.number = true

-- The cursor line shows the number
-- of the current line; other lines
-- are numbered in relation to the
-- cursor.
vim.opt.relativenumber = true

-- Highlight line the cursor sits in
vim.opt.cursorline = true

-- Tabs are replaced by spaces on insertion.
vim.opt.expandtab = true

-- Tab inserts 4 spaces.
vim.opt.shiftwidth = 2

-- Tab are represented as 4 spaces.
vim.opt.tabstop = 2

-- Bigger lines will require scrolling.
vim.opt.wrap = false

-- Integrate copy and paste between
-- vim and the systems buffers.
vim.opt.clipboard = "unnamedplus,unnamed"

-- Can undo change from days ago.
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

-- These configurations together make
-- that if a search is performed only
-- with lower case letters, then the
-- matching is done case insensitive,
vim.opt.ignorecase = true
-- but if there is at least one upper
-- case letter, then the search is
-- case sensitive.
vim.opt.smartcase = true

-- Highlight searched pattern.
vim.opt.hlsearch = true
-- Highlight while typing the search.
vim.opt.incsearch = true

-- Always leave 8 lines of gap above
-- and under de cursor while navigating,
-- unless already in the beginning/end
-- of a file.
vim.opt.scrolloff = 8

-- Left page margin.
vim.opt.colorcolumn = "80"

-- Always leave space for gutter.
vim.opt.signcolumn = "yes"

-- Disable mouse.
vim.opt.mouse = ""
vim.opt.mousemodel = ""

-- A new split is created on the right
-- and the cursor is moved to it.
vim.opt.splitright = true

-- Set updatetime for CursorHold
-- 300ms of no cursor movement
-- to trigger CursorHold. This
-- will trigger the floating
-- window for diagnostics.
vim.opt.updatetime = 100

-- Do not warn when the opened
-- file has unsaved changes
-- in another buffer.
vim.opt.hidden = true

-- when pressing <Tab> the number
-- of spaces inserted will be rounded
-- to the next shiftwidth.
vim.opt.shiftround = true

-- Visual indication for special characters.
vim.opt.list = true
vim.opt.listchars:append({ tab = "▒░", trail = "▓" })

-- Allow code folding using treesitter.
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

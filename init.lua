vim.g.mapleader = " "

-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set colorscheme (replace 'gruvbox' with your preferred colorscheme)
vim.cmd "colorscheme habamax"
vim.cmd('highlight Normal guibg=NONE ctermbg=NONE')
vim.cmd "set undodir=~/.config/nvim/undo"
vim.cmd "set nowrap"
--
-- Set tab settings
vim.o.expandtab = true     
vim.o.breakindent = true
vim.o.shiftwidth = 8
vim.o.tabstop = 8
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.signcolumn= "yes"
vim.o.completeopt = 'menuone,noselect'


-- Custom Colorscheme
vim.wo.number = true
vim.o.termguicolors = true
vim.cmd "highlight Keyword guifg=NONE guibg=NONE gui=bold"
vim.cmd "highlight Type guifg=#dba848 guibg=NONE gui=bold"
vim.cmd "highlight Statement guifg=NONE  guibg=NONE gui=bold"
vim.cmd "highlight PreProc guifg=#ebf0af  guibg=NONE gui=bold"
vim.cmd "highlight Function guifg=#94A1AD guibg=NONE=NONE"
vim.cmd "highlight Identifier guifg=#C2C2C2 guibg=NONE gui=NONE"


-- Enable mouse suppor
vim.o.mouse = "a"

-- Enable filetype detection and plugins
vim.cmd('filetype plugin indent on')

-- Toggle relative numbers
vim.api.nvim_set_keymap('n', '<leader>n', ':set relativenumber!<CR>', { noremap = true })

-- Quit
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true })

-- File Tree
vim.api.nvim_set_keymap('n', '<leader>e', ':Explore<CR>', { noremap = true })

-- Undo
vim.cmd('set undofile')

-- Format
vim.api.nvim_set_keymap('n', 'fG', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- Show manual
vim.api.nvim_set_keymap('n', '<shift>k', ':Man <cword><CR>', { noremap = true, silent = true })

-- Jump to Def
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', 'tD', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })


-- plugins
require('plugin.packer')
require("mason").setup()

vim.diagnostic.config({
  virtual_text = false,    -- Disable inline diagnostics (error text)
  signs = false,            -- Keep signs (icons) in the gutter
  underline = false,        -- Keep underlining for diagnostics
  update_in_insert = false,-- Disable updates while in insert mode
  severity_sort = true,    -- Sort diagnostics by severity (error > warning > info)
})

local lspconfig = require("lspconfig")

-- Rust Lsp
lspconfig.rust_analyzer.setup({
})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' }
    }
})

-- C Lsp
lspconfig.clangd.setup({})

local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' }
    }
})



-- setting cursor to block
vim.opt.guicursor = ""

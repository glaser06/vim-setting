local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system(
        {"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
         lazypath})
end
vim.opt.rtp:prepend(lazypath)

if vim.g.neovide then
    vim.keymap.set('n', '<D-s>', ':w<CR>') -- Save
    vim.keymap.set('v', '<D-c>', '"+y') -- Copy
    vim.keymap.set('n', '<D-v>', '"+P') -- Paste normal mode
    vim.keymap.set('v', '<D-v>', '"+P') -- Paste visual mode
    vim.keymap.set('c', '<D-v>', '<C-R>+') -- Paste command mode
    vim.keymap.set('i', '<D-v>', '<ESC>l"+Pli') -- Paste insert mode
end
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,localoptions"

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', {
    noremap = true,
    silent = true
})

require("lazy").setup({"nvim-lua/plenary.nvim", "tpope/vim-obsession", {
    'nanozuki/tabby.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons'
}})


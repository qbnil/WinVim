vim.g.mapleader = " "
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- opts for lazy setup
local opts = {
    change_detection = {
        enabled = false,
    },
    defaults = {
        lazy = false,
        version = false
    },
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
}

-- Lazy setup
require("lazy").setup({
    { import = "tornet.plugins" },
}, opts)

-- Settings
vim.opt.guicursor = ""
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.o.signcolumn = "yes"
vim.g.netrw_winsize = 15
vim.opt.scrolloff = 8
vim.opt.termguicolors = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.o.smartcase = true
vim.o.undofile = true
vim.opt.fileformat = 'unix'
vim.o.splitbelow = true
vim.o.splitright = true
vim.opt.whichwrap:append("<>[]hl")
vim.opt.shortmess:append("c")

-- Keymaps
vim.keymap.set("n", "<leader>pv", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("Rexplore")
	else
		vim.cmd("Explore")
	end
end, { silent = true })
vim.keymap.set("n", "<leader>pV", function()
	if vim.bo.filetype == "netrw" then
		vim.cmd("Rexplore")
	else
		vim.cmd("Vexplore")
	end
end, { silent = true })
vim.keymap.set({ "n" }, "<leader>L", "<cmd>Lazy<CR>", { silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("x", "<leader>P", [["_dP]], { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { silent = true })
vim.keymap.set("n", "<leader>y", [["+Y]], { silent = true })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { silent = true })
vim.keymap.set("t", "<A-w>", [[<C-\><C-n><C-w>w]], { silent = true })
vim.keymap.set({ "n", "v" }, "<A-w>", [[<C-w>]], { silent = true })
vim.keymap.set({ "n", "v" }, "j", [[gj]], { silent = true })
vim.keymap.set({ "n", "v" }, "k", [[gk]], { silent = true })
vim.keymap.set("n", "<leader>js", "<cmd>split<CR>", { silent = true })
vim.keymap.set("n", "<leader>ls", "<cmd>vsplit<CR>", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>q", "<cmd>:q<CR>", { silent = true })

-- Autocmds:
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank({ higroup = "IncSearch", timeout = 80 })
    end,
})
vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup('term_default_size', { clear = true }),
    callback = function ()
        vim.cmd[[resize5]]
    end
})

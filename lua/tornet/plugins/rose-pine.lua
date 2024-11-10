return {
    {
        'rose-pine/neovim',
        lazy = false,
        enabled = true,
        -- ft = { 'lua' },
        -- keys = {
        --     { "<leader>Tr", 'colorscheme rose-pine-main' },
        -- },
        name = 'rose-pine',
        opts = {
            disable_background = true,
            extend_background_behind_borders = false,
            styles = {
                bold = true,
                italic = false,
            },
            highlight_groups = {
                ['@lsp.type.comment'] = { italic = true },
                Comment = { italic = true },
                DiagnosticUnnecessary = { italic = false },
                TabLine = { bg = 'none' },
                TabLineSel = { bg = 'none' },
                TabLineFill = { bg = 'none' },
                StatusLine = { fg = '#777693', bg = '#2c2a2c' },
                StatusLineNC = { link = "StatusLine" },
                FzfLuaTitle = { bg = 'none' },
                StatusLineTerm = { bg = '#262626', fg = '#8787aa' },
                StatusLineTermNC = { bg = '#262626', fg = '#8787aa' },
                FzfLuaPreviewTitle = { bg = 'none' },
                NormalFloat = { bg = 'none' },
                NormalNC = { bg = 'none' },
                Keyword = { fg = '#588971' },
                String = { fg = '#FAC7AA' },
                ['@function.call.rust'] = { link = '@function.method' },
                -- Function = { fg = '#BF5866' },
                ['@constant.macro'] = { fg = '#C7616F' },
                ['@property'] = { fg = '#AAD2C5' },
                ['@keyword.conditional'] = { fg = "#588971" },
                ['@keyword.return'] = { fg = "#588971" },
                ['@keyword.import'] = { fg = "#588971" },
                ['@keyword.exception'] = { fg = "#588971" },
                ['@keyword.repeat'] = { fg = "#588971" },
                ['@lsp.typemod.function.defaultLibrary.lua'] = { fg = '#C7616F' },
                -- white
                Include = { fg = '#D7D3D1' },
                Pmenu = { bg = '#2c2a2c' },
                PmenuSel = { bg = "#343234" }
            },
        },
        config = function(_, opts)
            require('rose-pine').setup(opts)
            vim.cmd('colorscheme rose-pine-main')
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        opts = {},
        config = function ()
            require('tokyonight').setup({
                transparent = true,
            })
            vim.cmd[[colorscheme tokyonight-night]]
        end
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            vim.cmd[[colorscheme moonfly]]
        end
    },
    {
        'rockerBOO/boo-colorscheme-nvim',
        lazy = false,
        enabled = false,
        config = function()
            require('boo-colorscheme').setup({
                italic = true, -- toggle italics
            })
            vim.cmd[[colorscheme sunset_cloud]]
            -- vim.cmd[[colorscheme radioactive_waste]]
            -- vim.cmd[[colorscheme forest_stream]]
            -- vim.cmd[[colorscheme crimson_moonlight]]
        end
    },
    {
        'kdheepak/monochrome.nvim',
        lazy = false,
        enabled = false,
        config = function ()
            vim.cmd 'colorscheme monochrome'
        end
    },
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        -- you can set set configuration options here
        config = function ()
            vim.g.zenbones_darken_comments = 55
            vim.cmd.colorscheme('zenbones')
        end
    },
}

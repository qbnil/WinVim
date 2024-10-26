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
                ['@function.builtin.lua'] = { italic = false },
                ['@lsp.type.comment'] = { italic = true },
                ['@lsp.typemod.function.defaultLibrary.lua'] = { italic = false },
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
                NormalNC = { bg = 'none' }
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
    }
}

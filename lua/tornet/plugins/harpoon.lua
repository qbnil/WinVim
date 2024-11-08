return {
    "theprimeagen/harpoon",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        vim.keymap.set("n", "<leader>a", function()
            require("harpoon.mark").add_file()
        end)
        vim.keymap.set("n", "<A-a>", function()
            require("harpoon.ui").toggle_quick_menu()
        end)
        vim.keymap.set("n", "<A-1>", function()
            require("harpoon.ui").nav_file(1)
        end)
        vim.keymap.set("n", "<A-2>", function()
            require("harpoon.ui").nav_file(2)
        end)
        vim.keymap.set("n", "<A-3>", function()
            require("harpoon.ui").nav_file(3)
        end)
        vim.keymap.set("n", "<A-4>", function()
            require("harpoon.ui").nav_file(4)
        end)
    end
}


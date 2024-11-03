return {
    "CRAG666/code_runner.nvim",
    lazy = true,
    event = "VeryLazy",
    config = function()
        require("code_runner").setup({
            filetype = {
                java = {
                    "cd $dir &&",
                    "javac $fileName &&",
                    "java $fileNameWithoutExt",
                },
                python = "python3",
                javascript = "node",
                typescript = "deno run",
                rust = {
                    "cd $dir &&",
                    "rustc $fileName &&",
                    "$dir/$fileNameWithoutExt",
                },
                php = "php -f",
                bash = "bash -c",
                cplus = {
                    "cd $dir &&",
                    "gcc $fileName -lm -o $fileNameWithoutExt &&",
                    "./$fileNameWithoutExt",
                },
                c = {
                    "cd $dir &&",
                    "gcc $fileName -lm -o $fileNameWithoutExt &&",
                    "./$fileNameWithoutExt",
                },
                go = {
                    "cd $dir &&",
                    "go run $fileName",
                },
            },
        })
        vim.keymap.set("n", "<leader>R", ":RunCode<CR>", { noremap = true, silent = false })
        vim.keymap.set("n", "<leader>fr", ":RunFile<CR>", { noremap = true, silent = false })
        vim.keymap.set("n", "<leader>pr", ":RunProject<CR>", { noremap = true, silent = false })
        vim.keymap.set("n", "<leader>cr", ":RunClose<CR>", { noremap = true, silent = false })
        vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
        vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
    end,
}

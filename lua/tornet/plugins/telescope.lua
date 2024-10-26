return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({
            defaults = {
                file_ignore_patterns = {
                    "node_modules", "Hardware", '.git',  '.local',  '.cache',  '.android',  'undodir',  '.npm', '.mozilla',  '.codeium',  'systemd', 'libreoffice',  'xournalpp',  '.gnupg',  'gtk-2.0',  'gtk-3.0',  'mps-youtube',  'skypeforlinux',  'spotify', '.pki',  'mps',  'youtube-viewer',  'dconf',  'tpm',  '.Xauthority',  '.cargo',  '.rustup',  'venv',  'functions',  'vscode-php-debug', '.symfony5',  'fonts',  'VirtualBox',  '.icons',  '.themes',  'Images', 'tmux-resurrect',  'misc',  'chromium', 'ranger',  '.nvm',  'discord',  'vesktop',  '.anydesk',  'Pictures',  '.steam',
                },
            }
        })
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>;', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fwn', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>ft', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}

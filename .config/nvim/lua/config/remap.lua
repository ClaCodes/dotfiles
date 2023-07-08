--open file explorer (netrw)
vim.keymap.set("n", "<leader>tt", vim.cmd.Ex)

--undo-tree
vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)

--ts-playground
vim.keymap.set("n", "<leader>ts", vim.cmd.TSPlaygroundToggle)

--telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})

--tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- search and replace under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

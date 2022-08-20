local nnoremap = require("config.keymap").nnoremap
local inoremap = require("config.keymap").inoremap
local vnoremap = require("config.keymap").vnoremap

--open file tree
nnoremap("<leader>tt", "<cmd>Ex<CR>")

--build
nnoremap("<leader>bz", "<cmd>w<CR><cmd>!zig build<CR>")
nnoremap("<leader>bc", "<cmd>w<CR><cmd>!gcc -g main.c<CR>")

--telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr> ")

--tmux-sessionizer
nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

--line swapping
nnoremap("<M-j>", ":m .+1<CR>==")
nnoremap("<M-k>", ":m .-2<CR>==")
inoremap("<M-j>", "<Esc>:m .+1<CR>==gi")
inoremap("<M-k>", "<Esc>:m .-2<CR>==gi")
vnoremap("<M-j>", ":m '>+1<CR>gv=gv")
vnoremap("<M-k>", ":m '<-2<CR>gv=gv")

--harpooning
nnoremap("<leader>jk", function() require("harpoon.mark").add_file() end, silent) 
nnoremap("<leader>jj", function() require("harpoon.ui").toggle_quick_menu() end, silent) 
nnoremap("<leader>jl", function() require("harpoon.ui").nav_next() end, silent) 
nnoremap("<leader>j;", function() require("harpoon.ui").nav_prev() end, silent) 
nnoremap("<leader>ja", function() require("harpoon.ui").nav_file(1) end, silent) 
nnoremap("<leader>js", function() require("harpoon.ui").nav_file(2) end, silent) 
nnoremap("<leader>jd", function() require("harpoon.ui").nav_file(3) end, silent) 
nnoremap("<leader>jf", function() require("harpoon.ui").nav_file(4) end, silent) 
nnoremap("<leader>jg", function() require("harpoon.ui").nav_file(5) end, silent) 
nnoremap("<leader>jh", function() require("harpoon.ui").nav_file(6) end, silent) 

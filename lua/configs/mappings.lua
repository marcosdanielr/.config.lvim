local keys = lvim.keys

-- ##### CHANGE TABS ##### keys.normal_mode["<S-tab>"] = ":BufferLineCyclePrev<CR>"
keys.normal_mode["<tab>"] = ":BufferLineCycleNext<CR>"
keys.normal_mode["<S-tab>"] = ":BufferLineCyclePrev<CR>"

-- ##### RESIZE WINDOW #####
keys.normal_mode["<S-A-l>"] = ":vertical resize +2<CR>"
keys.normal_mode["<S-A-h>"] = ":vertical resize -2<CR>"
keys.normal_mode["<S-A-j>"] = ":resize +2<CR>"
keys.normal_mode["<S-A-k>"] = ":resize -2<CR>"

-- ##### SEARCH #####
keys.normal_mode["<C-f>"] = ":lua require('telescope.builtin').live_grep({search_dirs={vim.fn.expand('%:p')}})<CR>"
keys.normal_mode["<C-a>"] = ":Telescope live_grep<CR>"
keys.normal_mode["<C-p>"] = ":Telescope find_files<CR>"

-- ##### SAVE #####
keys.normal_mode["<C-s>"] = ":w<CR>"

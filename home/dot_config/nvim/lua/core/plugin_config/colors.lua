vim.o.termguicolors = true
require("catppuccin").setup({
term_colors = true,
integrations = {
    cmp = true,
    gitsigns = false,
    telescope = true,
    notify = false,
    mini = false,
    harpoon = true,
    leap = true,
    treesitter_context = true,
    treesitter = true
    -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
},
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

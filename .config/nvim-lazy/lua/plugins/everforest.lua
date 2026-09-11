return {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000,
    config = function()
    require("everforest").setup({
        background = "hard", -- Options: "soft", "medium", "hard"
        transparent_background = false,
        show_end_of_buffer = true,
        float_style = "bright",
        diagnostics = {
            underline = true,
            virtual_text = "coloured",
            undercurl = true,
            background = true,
        },
        final_newline = true,
        treesitter = true,
        dim_inactive = {
            enabled = false,
            shade = "dark",
            opacity = 0.6,
        },
        lualine = {
            transparent_section = false,
        },
        noice = {
            enabled = true,
        },
        lightline = {
            colorscheme = "everforest",
        },
    })
    vim.cmd("colorscheme everforest")
    end,
}

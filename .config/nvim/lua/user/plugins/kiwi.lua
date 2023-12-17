return {
    ['serenevoid/kiwi.nvim']  = {
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    opts = {
        {
            name = "work",
            path = "/home/sharpest/Documents/wiki/work"
        },
        {
            name = "Trade Checklist",
            path = "/home/sharpest/Documents/wiki/trade_checklist"
        }
    },
    keys = {
        { "<leader>ww", ":lua require(\"kiwi\").open_wiki_index()<cr>", desc = "Open Wiki index" },
        { "<leader>wp", ":lua require(\"kiwi\").open_wiki_index(\"personal\")<cr>", desc = "Open index of personal wiki" },
        { "<leader>t", ":lua require(\"kiwi\").todo.toggle()<cr>", desc = "Toggle Markdown Task" }
    },
    lazy = true
}
}

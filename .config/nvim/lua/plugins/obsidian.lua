return {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- use latest release, remove to use latest commit
    ---@module 'obsidian'
    ---@type obsidian.config
    opts = {
--        legacy_commands = false, -- this will be removed in the next major release
        workspaces = {
            {
                name = "personal",
                path = "~/Documents/Notes/personal",
            },
        },
    },
    daily_notes = {
        -- Optional, if you keep daily notes in a separate directory.
        folder = "quicknotes",
        -- Optional, if you want to change the date format for the ID of daily notes.
        date_format = "%Y-%m-%d",
        -- Optional, if you want to change the date format of the default alias of daily notes.
        alias_format = "%B %-d, %Y",
        -- Optional, default tags to add to each new daily note created.
        default_tags = { "quicknotes" },
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = nil
        },
    mappings = {
        -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
        ["gf"] = {
            action = function()
            return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
        },
    },
    keys = {
        { '<leader>od', ':ObsidianToday<cr>', desc = 'obsidian [d]aily' },
        { '<leader>ot', ':ObsidianToday 1<cr>', desc = 'obsidian [t]omorrow' },
        { '<leader>oy', ':ObsidianToday -1<cr>', desc = 'obsidian [y]esterday' },
        { '<leader>ob', ':ObsidianBacklinks<cr>', desc = 'obsidian [b]acklinks' },
        { '<leader>ol', ':ObsidianLink<cr>', desc = 'obsidian [l]ink selection' },
        { '<leader>of', ':ObsidianFollowLink<cr>', desc = 'obsidian [f]ollow link' },
        { '<leader>on', ':ObsidianNew<cr>', desc = 'obsidian [n]ew' },
        { '<leader>os', ':ObsidianSearch<cr>', desc = 'obsidian [s]earch' },
        { '<leader>oo', ':ObsidianQuickSwitch<cr>', desc = 'obsidian [o]pen quickswitch' },
        { '<leader>oO', ':ObsidianOpen<cr>', desc = 'obsidian [O]pen in app' },
        { '<leader>o', '<cr>', desc = 'obsidian' },
    },
}



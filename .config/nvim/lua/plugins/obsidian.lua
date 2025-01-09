-- obsidian provides convenient highlighting for markdown, and obsidian-like notetaking
return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {

    -- don't add yaml frontmatter automatically to markdown
    disable_frontmatter = true,

    -- disable the icons and highlighting, since this is taken care of by render-markdown plugin
    ui = { enable = false },

    templates = {
    -- Optional, if you want to change the date format for the ID of daily notes.
--    date_format = "%Y-%m-%d (%a)",
    -- Optional, if you want to change the date format of the default alias of daily notes.
--    alias_format = "%A %B %-d, %Y",
    -- Location of template
    folder = "~/notes/vault/Templates",
    -- A map for custom variables, the key should be the variable and the value a function
  },

    mappings = {
      -- Default <CR> mapping will convert a line into a checkbox if not in
      -- a link or follow it if in a link. This makes it only follow a link.
      ["<CR>"] = {
        action = function()
          if require("obsidian").util.cursor_on_markdown_link(nil, nil, true) then
            return "<cmd>ObsidianFollowLink<CR>"
          end
        end,
        opts = { buffer = true, expr = true },
      },
     -- Toggle check-boxes.
    ["<leader>ch"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
      },

      -- Default is to add a unique id to the beginning of a note filename;
      -- this disables it
      note_id_func = function(title)
        return title
      end,

      -- Default is "wiki"; this keeps it regular markdown
      preferred_link_style = "markdown",

    workspaces = {
      {
        name = "personal",
        path = "~/notes/vault",
    },
  },

    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "Dailynotes",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d (%a)",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%A %-d %B, %Y",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = nil
  },
      -- Open URL under cursor in browser (uses `open` for MacOS).
      follow_url_func = function(url)
        vim.inspect(vim.system({ "open", url }))
      end,
    },

    keys = {
      { "<leader>os", "<cmd>ObsidianSearch<cr>", desc = "[o]bsidian [s]earch" },
      { "<leader>on", "<cmd>ObsidianLinkNew<cr>", mode = { "v" }, desc = "[o]bsidian [n]ew link" },
      { "<leader>ol", "<cmd>ObsidianLink<cr>", mode = { "v" }, desc = "[o]bsidian [l]ink to existing" },
      { "<leader>od", "<cmd>ObsidianDailies -999 0<cr>", desc = "[o]bsidian [d]ailies" },
      { "<leader>ot", "<cmd>ObsidianTags<cr>", desc = "[o]bsidian [t]ags" },
    },
  },
}


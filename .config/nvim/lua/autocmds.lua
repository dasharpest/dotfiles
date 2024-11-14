-- Autocommands.

-- Display nonprinting characters (tab characters and trailing spaces).
vim.cmd(":autocmd InsertEnter * set listchars=tab:>•")

-- Also show trailing spaces after exiting insert mode
vim.cmd(":autocmd InsertLeave * set listchars=tab:>•,trail:∙,nbsp:•,extends:⟩,precedes:⟨")

-- Set the working directory to that of the opened file
vim.cmd("autocmd BufEnter * silent! lcd %:p:h") 

-- <leader>d inserts a header for today's date. Different commands depending on
-- the format of the filetype (ReStructured Text or Markdown)
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "rst",
  callback = function()
    vim.keymap.set(
      { "n", "i" },
      "<leader>d",
      '<Esc>:r! date "+\\%Y-\\%m-\\%d"<CR>A<CR>----------<CR>',
      { desc = "Insert date as section title" }
    )
    vim.keymap.set(
      "n",
      "<leader>p",
      'i` <>`__<Esc>F<"+pF`a',
      { desc = "Paste a ReST-formatted link from system clipboard" }
    )
  end,
})

-- (R)Markdown-specific mappings
vim.api.nvim_create_autocmd("Filetype", {
  pattern = { "markdown", "rmd" },
  callback = function()
    vim.keymap.set(
      { "n", "i" },
      "<leader>d",
      '<Esc>:r! date "+\\# \\%Y-\\%m-\\%d"<CR>A',
      { desc = "Insert date as section title" }
    )

    vim.keymap.set(
      "n",
      "<leader>p",
      'i[]()<Esc>h"+pF]i',
      { desc = "Paste a Markdown-formatted link from system clipboard" }
    )
  end,
})

-- Render RMarkdown in R running in terminal with <leader>k
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "rmarkdown", "rmd" },
  callback = function()
    vim.keymap.set(
      "n",
      "<leader>k",
      ":TermExec cmd='rmarkdown::render(\"%:p\")'<CR>",
      { desc = "Render RMar[k]down to HTML" }
    )
    vim.keymap.set(
      "n",
      "<leader>rm",
      function ()
        ft = vim.opt.ft:get()
        if ft == "rmarkdown" or ft == "rmd" then
          vim.cmd("set ft=markdown")
          vim.cmd("RenderMarkdown enable")
        end
        if ft == "markdown" then
          vim.cmd("set ft=rmarkdown")
          vim.cmd("RenderMarkdown disable")
        end
      end,
      { desc = "Toggle render-markdown on an RMarkdown file" }
    )
  end,
})

-- Briefly highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank{higroup = "IncSearch", timeout=100}
  end,
  pattern = "*",
})

    -- If the buffer we are closing during this QuitPre action is the only one
    -- that does not match the above patterns, then consider it the last text buffer,
    -- and close all other buffers.
    if 1 == #wins - #floating_wins - #close_wins then
      for _, w in ipairs(close_wins) do
        vim.api.nvim_win_close(w, true)
      end
    end
  end,
})

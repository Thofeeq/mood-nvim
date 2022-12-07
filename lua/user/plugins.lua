-- Add your plugins here
-- Note: Some of these plugins have their keybindings inside `.config.lua`

local user_plugins = {
  'kat0h/nyancat.vim',
  { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end },
  'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim', -- Allows to toggle LSP/linting
  'xiyaowong/nvim-transparent', -- Allows to toggle transparent background for Vim
  'tpope/vim-markdown', -- Markdown syntax highlighting plugin
  'voldikss/vim-floaterm', -- Allows for pop up like terminal
  'nvim-telescope/telescope-live-grep-args.nvim', -- Allows to search(telescope grep) with arguments so that you can search on specific folders for example
  'tools-life/taskwiki', -- VimWiki's TaskWarrior integration
  "iamcco/markdown-preview.nvim",
  "vim-scripts/Colour-Sampler-Pack",
  { 'romgrk/barbar.nvim' }, -- Enable tabs?
  "vimwiki/vimwiki",
  "Maan2003/lsp_lines.nvim",
  { "anuvyklack/windows.nvim",
    requires = "anuvyklack/middleclass",
    config = function()
      require('windows').setup()
    end
  },
  "natecraddock/workspaces.nvim",
  "LintaoAmons/scratch.nvim",
}

return user_plugins

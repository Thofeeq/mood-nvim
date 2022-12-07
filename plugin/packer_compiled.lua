-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/thofeeqmohamed/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/thofeeqmohamed/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/thofeeqmohamed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/thofeeqmohamed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/thofeeqmohamed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Colour-Sampler-Pack"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/Colour-Sampler-Pack",
    url = "https://github.com/vim-scripts/Colour-Sampler-Pack"
  },
  HowMuch = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/HowMuch",
    url = "https://github.com/sk1418/HowMuch"
  },
  ["aerial.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["agitator.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/agitator.nvim",
    url = "https://github.com/emmanueltouzery/agitator.nvim"
  },
  ["any-jump.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/any-jump.vim",
    url = "https://github.com/pechorin/any-jump.vim"
  },
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["beacon.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/beacon.nvim",
    url = "https://github.com/danilamihailov/beacon.nvim"
  },
  black = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/black",
    url = "https://github.com/psf/black"
  },
  ["bufferize.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/bufferize.vim",
    url = "https://github.com/AndrewRadev/bufferize.vim"
  },
  catppuccin = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-ultisnips"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-nvim-ultisnips",
    url = "https://github.com/quangnguyen30192/cmp-nvim-ultisnips"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-tmux"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cmp-tmux",
    url = "https://github.com/andersevenrud/cmp-tmux"
  },
  ["cool-substitute.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/cool-substitute.nvim",
    url = "https://github.com/otavioschwanck/cool-substitute.nvim"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/ctrlsf.vim",
    url = "https://github.com/dyng/ctrlsf.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/dashboard-nvim",
    url = "https://github.com/glepnir/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  firenvim = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/gruvbox-material",
    url = "https://github.com/sainnhe/gruvbox-material"
  },
  harpoon = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
    url = "https://github.com/ggandor/lightspeed.nvim"
  },
  ["lsp_lines.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/lsp_lines.nvim",
    url = "https://github.com/Maan2003/lsp_lines.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  middleclass = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/middleclass",
    url = "https://github.com/anuvyklack/middleclass"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "https://github.com/shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-vscode-js"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-dap-vscode-js",
    url = "https://github.com/mxsdev/nvim-dap-vscode-js"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-send-to-term"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-send-to-term",
    url = "https://github.com/mtikekar/nvim-send-to-term"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-transparent",
    url = "https://github.com/xiyaowong/nvim-transparent"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-endwise"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-treesitter-endwise",
    url = "https://github.com/RRethy/nvim-treesitter-endwise"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nyancat.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/nyancat.vim",
    url = "https://github.com/kat0h/nyancat.vim"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["other.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/other.nvim",
    url = "https://github.com/rgroli/other.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rest.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/rest.nvim",
    url = "https://github.com/NTBBloodbath/rest.nvim"
  },
  ["ror.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/ror.nvim",
    url = "https://github.com/otavioschwanck/ror.nvim"
  },
  ["sideways.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/sideways.vim",
    url = "https://github.com/AndrewRadev/sideways.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/splitjoin.vim",
    url = "https://github.com/AndrewRadev/splitjoin.vim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["switch.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/switch.vim",
    url = "https://github.com/AndrewRadev/switch.vim"
  },
  taskwiki = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/taskwiki",
    url = "https://github.com/tools-life/taskwiki"
  },
  ["telescope-alternate.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-alternate.nvim",
    url = "https://github.com/otavioschwanck/telescope-alternate.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-live-grep-args.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "https://github.com/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope-ultisnips.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope-ultisnips.nvim",
    url = "https://github.com/fhill2/telescope-ultisnips.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tmux-awesome-manager.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/tmux-awesome-manager.nvim",
    url = "https://github.com/otavioschwanck/tmux-awesome-manager.nvim"
  },
  ["toggle-lsp-diagnostics.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/toggle-lsp-diagnostics.nvim",
    url = "https://github.com/WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\nÌ\2\0\0\2\0\v\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0)\1\0\0=\1\n\0K\0\1\0&UltiSnipsRemoveSelectModeMappings\15<c-x><c-s>\26UltiSnipsListSnippets$<Plug>(ultisnips_jump_backward)!UltiSnipsJumpBackwardTrigger#<Plug>(ultisnips_jump_forward) UltiSnipsJumpForwardTrigger\29<Plug>(ultisnips_expand)\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["undoquit.vim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/undoquit.vim",
    url = "https://github.com/AndrewRadev/undoquit.vim"
  },
  undotree = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-bufsurf"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-bufsurf",
    url = "https://github.com/ton/vim-bufsurf"
  },
  ["vim-camelsnek"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-camelsnek",
    url = "https://github.com/nicwest/vim-camelsnek"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-enmasse"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-enmasse",
    url = "https://github.com/Olical/vim-enmasse"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-exchange"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-exchange",
    url = "https://github.com/tommcdo/vim-exchange"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-indent-object",
    url = "https://github.com/michaeljsmith/vim-indent-object"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-lastplace",
    url = "https://github.com/farmergreg/vim-lastplace"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/tpope/vim-markdown"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors",
    url = "https://github.com/terryma/vim-multiple-cursors"
  },
  ["vim-notes"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-notes",
    url = "https://github.com/xolox/vim-notes"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-prettier",
    url = "https://github.com/prettier/vim-prettier"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-ruby"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-ruby",
    url = "https://github.com/vim-ruby/vim-ruby"
  },
  ["vim-ruby-refactoring"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-ruby-refactoring",
    url = "https://github.com/ecomba/vim-ruby-refactoring"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-snippets/.",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-solidity",
    url = "https://github.com/tomlion/vim-solidity"
  },
  ["vim-subversive"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-subversive",
    url = "https://github.com/svermeulen/vim-subversive"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-textobj-quotes"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-textobj-quotes",
    url = "https://github.com/beloglazov/vim-textobj-quotes"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-yoink"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-yoink",
    url = "https://github.com/svermeulen/vim-yoink"
  },
  vimwiki = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["vscode-js-debug"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/opt/vscode-js-debug",
    url = "https://github.com/microsoft/vscode-js-debug"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["windows.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fwindows\frequire\0" },
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/windows.nvim",
    url = "https://github.com/anuvyklack/windows.nvim"
  },
  ["yanky.nvim"] = {
    loaded = true,
    path = "/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Runtimepath customization
time([[Runtimepath customization]], true)
vim.o.runtimepath = vim.o.runtimepath .. ",/Users/thofeeqmohamed/.local/share/nvim/site/pack/packer/start/vim-snippets/."
time([[Runtimepath customization]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\nÌ\2\0\0\2\0\v\0\0216\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0)\1\0\0=\1\n\0K\0\1\0&UltiSnipsRemoveSelectModeMappings\15<c-x><c-s>\26UltiSnipsListSnippets$<Plug>(ultisnips_jump_backward)!UltiSnipsJumpBackwardTrigger#<Plug>(ultisnips_jump_forward) UltiSnipsJumpForwardTrigger\29<Plug>(ultisnips_expand)\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: windows.nvim
time([[Config for windows.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fwindows\frequire\0", "config", "windows.nvim")
time([[Config for windows.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

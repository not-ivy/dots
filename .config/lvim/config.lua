vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.guifont = "Monofoki:h13"

lvim.log.level = "info"
lvim.format_on_save = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.colorscheme = "catppuccin-mocha"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.treesitter.auto_install = true

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua" },
  { command = "prettierd" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "shellcheck",
    args = { "--severity", "warning" },
  },
  { command = "eslint_d" }
}

lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin" },
  { "andweeb/presence.nvim", name = "presence" },
  { "wakatime/vim-wakatime", name = "wakatime" },
  { "editorconfig/editorconfig-vim", name = "editorconfig" }
}

vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_vfx_particle_density = 20
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animation_length = 0.15
vim.g.neovide_cursor_trail_size = 0.25

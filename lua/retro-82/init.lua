-- Retro-82 colorscheme for Neovim
-- Ported from https://github.com/OldJobobo/omarchy-retro-82-theme

local M = {}

M.config = {
  transparent = false,
  terminal_colors = true,
  styles = {
    comments  = { italic = true },
    keywords  = {},
    functions = {},
    strings   = {},
  },
}

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "retro-82"

  local palette = require("retro-82.palette")
  local c = vim.deepcopy(palette.colors)

  if M.config.transparent then
    c.bg = "NONE"
  end

  local groups = require("retro-82.highlights").get(c)

  -- User-style overrides
  local style = M.config.styles or {}
  local function merge(name, extra)
    if groups[name] and type(extra) == "table" then
      groups[name] = vim.tbl_extend("force", groups[name], extra)
    end
  end
  merge("Comment", style.comments)
  merge("@comment", style.comments)
  merge("Keyword", style.keywords)
  merge("@keyword", style.keywords)
  merge("Function", style.functions)
  merge("@function", style.functions)
  merge("String", style.strings)
  merge("@string", style.strings)

  for name, val in pairs(groups) do
    vim.api.nvim_set_hl(0, name, val)
  end

  if M.config.terminal_colors then
    require("retro-82.terminal").apply(palette.colors)
  end
end

return M

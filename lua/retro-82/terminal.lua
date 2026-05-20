local M = {}

function M.apply(c)
  vim.g.terminal_color_0  = c.bg
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.teal
  vim.g.terminal_color_3  = c.orange_dark
  vim.g.terminal_color_4  = c.orange
  vim.g.terminal_color_5  = c.teal_dim
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg_dim
  vim.g.terminal_color_8  = c.bg_alt
  vim.g.terminal_color_9  = c.red
  vim.g.terminal_color_10 = c.teal
  vim.g.terminal_color_11 = c.orange_dark
  vim.g.terminal_color_12 = c.orange
  vim.g.terminal_color_13 = c.teal_dim
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
end

return M

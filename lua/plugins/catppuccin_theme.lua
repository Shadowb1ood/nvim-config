vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  flavour = "mocha",
  priority = 1000,
  -- background = {
  --   light = "latte",
  --   dark = "macchiato",
  -- },
  transparent_background = true,
  term_colors = false,
  compile = {
    enabled = false,
    path = vim.fn.stdpath("cache") .. "/catppuccin",
  },
  dim_inactive = {
    enabled = false,
    shade = "dark",
    percentage = 0.15,
  },
  styles = {
    comments = { "italic" },
    conditionals = { "italic" },
  },
  integrations = {
    neotree = true,
    cmp = true,
    notify = false,
    treesitter = true,
    which_key = true,
  },
  highlight_overrides = {
    macchiato = function(mocha)
      return {
        LineNr = { fg = mocha.overlay1 },
      }
    end,
  },
})

return {
  { "catppuccin/nvim" },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "catppuccin",
  } },
}

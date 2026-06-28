return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000, -- carrega antes de outros plugins
    opts = {
      theme = "dragon", -- ou "wave" / "lotus"
      transparent = true,
      undercurl = true,
      background = {
        dark = "dragon",
        light = "lotus",
      },
    },
  },

  -- Diz ao LazyVim para usar esse colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}

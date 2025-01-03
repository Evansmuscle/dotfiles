return {
  -- Add Dracula
  "Mofiqul/dracula.nvim",

  -- Configure lazy to load Dracula
  lazy = false,
  priority = 1000,
  config = function()
    local dracula = require("dracula")

    dracula.setup({
      transparent_bg = true
    })

    vim.cmd([[colorscheme dracula]])
  end
}

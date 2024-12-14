return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local tree = require("nvim-tree")
      local devicons = require("nvim-web-devicons")

      devicons.setup({
        color_icons = true,
        strict = true,
        variant = "dark",
      })

      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      tree.setup({
        view = {
          width = 35,
          relativenumber = true,
        },

        renderer = {
          indent_markers = {
            enable = true,
          },
          icons = {
            glyphs = {
              folder = {
                arrow_closed = "->",
                arrow_open = "↓"
              },
            },
          },
        },

        actions = {
          open_file = {
            window_picker = {
              enable = false,
            },
          },
        },

        git = {
          ignore = false,
        },
      })

      local keymap = vim.keymap

      keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
      keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle find file explorer" })
      keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
      keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
    end
  }
}

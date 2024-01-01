local which_key = require("which-key")

local normal_mappings = {
  ['-'] = { "<cmd>Telescope find_files<cr>", "Find Files" },
  ['<leader>'] = {
    b = {
      b = { "<cmd>Telescope buffers<cr>", "Find Buffers" },
    },
    f = {
      s = { "<cmd>w<cr>", "Save" },
      f = { "<cmd>Telescope find_files<cr>", "Find Files" },
      g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
      h = { "<cmd>Telescope help_tags<cr>", "Find Tags" },
      e = {
        d = { "<cmd>e ~/.config/nvim/<cr>", "Edit config" }
      }
    },
    g = {
      s = { "<cmd>Neogit<cr>", "Magit Status" },
    },
    w = {
      ['-'] = { "<c-w>s", "Split Horizontal" },
      ['/'] = { "<c-w>v", "Split Vertical" },
      h = { "<c-w>h", "Move up" },
      j = { "<c-w>j", "Move down" },
      k = { "<c-w>k", "Move left" },
      l = { "<c-w>l", "Move right" },
      d = { "<c-w>q", "Quit window" },
    },
    q = {
      q = { "<cmd>q<cr>", "Quit Vim" }
    }
  }
}

local normal_opts = {
  mode = "n",
  prefix = "",
  buffer = nil,
  silent = true,
  noremap = true,
  nowait = true,
}

which_key.register(normal_mappings, normal_opts)

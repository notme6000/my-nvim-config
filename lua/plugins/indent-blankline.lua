return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "VeryLazy",
  opts = {
    -- New indent configuration
    indent = {
      char = "│",  -- or "▏", "┊", "|", etc.
      tab_char = "│",
    },
    
    -- New scope configuration (replaces show_current_context)
    scope = {
      enabled = true,
      show_start = true,      -- Shows line at scope start
      show_end = false,       -- Shows line at scope end
      char = "│",            -- Character for scope lines
      highlight = { "Function", "Label" },  -- Optional: highlight groups
    },
    
    -- Exclude certain filetypes
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard", 
        "neo-tree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
        "norg",  -- if you use neorg
      },
      buftypes = {
        "terminal",
        "nofile",
        "quickfix",
        "prompt",
      },
    },
  },
}

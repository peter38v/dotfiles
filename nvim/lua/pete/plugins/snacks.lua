return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    image = {
      enabled = true,
      doc = {
        enabled = true,   -- Enable document image support
        inline = true,    -- Render images inline in the buffer
        float = false,    -- Disable floating window (optional)
        conceal = true,   -- Conceal the image text when rendered inline
      },
    },
    -- Explicitly disable all other modules
    bigfile = { enabled = false },
    dashboard = { enabled = false },
    explorer = { enabled = false },
    indent = { enabled = false },
    input = { enabled = false },
    notifier = { enabled = false },
    picker = { enabled = false },
    quickfile = { enabled = false },
    scope = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
    -- LazyGit is also a separate module that might be loaded
    lazygit = { enabled = false },
    -- Terminal module (if you want to disable terminal features)
    terminal = { enabled = false },
    -- Profile module (disabled unless needed)
    profile = { enabled = false },
    -- Toggle module (for toggling features)
    toggle = { enabled = false },
    -- Zen mode (likely not needed)
    zen = { enabled = false },
  },
}

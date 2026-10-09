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
      -- Disable snacks' own LaTeX math renderer so render-markdown.nvim
      -- (via latex2text / utftex) can handle math instead.
      math = {
        enabled = false,
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
    lazygit = { enabled = false },
    terminal = { enabled = false },
    profile = { enabled = false },
    toggle = { enabled = false },
    zen = { enabled = false },
  },
}

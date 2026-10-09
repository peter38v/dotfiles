require("pete.core.options")
require("pete.core.keymaps")
require("pete.core.colorscheme")
require("pete.lazy")
require("pete.lsp")

-- Funcs
local finder = require("pete.functions.funcs")

vim.keymap.set('n', '<leader>fn', function()
  finder.notes_finder('~/Retep')
end, { desc = 'Find file in folder (vsplit)' })

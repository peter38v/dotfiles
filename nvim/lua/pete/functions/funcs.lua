-- Finder Funcs
local M = {}

function M.notes_finder(folder)
  local builtin = require('telescope.builtin')
  local actions = require('telescope.actions')
  local action_state = require('telescope.actions.state')

  builtin.find_files({
    prompt_title = 'Search in ' .. folder,
    cwd = folder,
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        if selection then
          vim.cmd('vsplit ' .. vim.fn.fnameescape(selection.path))
        end
      end)
      return true
    end,
  })
end

return M

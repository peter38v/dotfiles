return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in 4.0.0
    workspaces = {
      {
        name = "main",
        path = "~/Retep",
      },
    },
    attachments = {
        folder = "assets"
    },
    -- Automatically generate name for pasted images
    img_name_func = function ()
        return string.format("Pasted image %s", os.date("%Y%m%d%H%M%S"))
    end,

    -- Use the link title as the note ID.
    note_id_func = function(title)
      if title then
        return title
          :gsub("[\\/:%*%?\"<>|]", "")
          :gsub("^%s+", "")
          :gsub("%s+$", "")
      end

      return tostring(os.time())
    end,
 },
}

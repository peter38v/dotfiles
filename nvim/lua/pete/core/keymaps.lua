vim.g.mapleader =" "

local keymap = vim.keymap -- for conciseness


keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear Search Highlights"})

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Use tab to go down faster in the document

keymap.set('n', '<Tab>', '10j', { noremap = true, silent = true })
keymap.set('n', '<BS>', '10k', { noremap = true, silent = true })
-- OBSIDIAN

keymap.set("n", "gf", "<cmd>Obsidian follow_link<CR>", {
  buffer = true,
  desc = "Follow Obsidian link",
})

keymap.set("n", "<leader>bb", "<cmd>Obsidian backlinks<CR>", {
  desc = "Show Obsidian backlinks",
})

keymap.set("n","<leader>bs", "<cmd>Obsidian search<CR>",{
    desc = "Searches for notes with ripgrep or creates new"
})


keymap.set("n","<leader>bq", "<cmd>Obsidian quick_switch<CR>",{
    desc = "Quickly switches files"
})

keymap.set("n","<leader>bn", "<cmd>Obsidian new<CR>",{
    desc = "Create new note"
})

keymap.set("n", "<leader>pi", "<cmd>Obsidian paste_img<cr>", 
  { desc = "Paste image from clipboard into Obsidian vault" })

-- MARKDWON PREVIEW
keymap.set("n", "<leader>m","<cmd>MarkdownPreviewToggle<cr>",
    {desc = "Toggle Markdown Preview"}
)

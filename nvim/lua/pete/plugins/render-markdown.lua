return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'nvim-tree/nvim-web-devicons',
    },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        render_modes = { 'n', 'c', 't' },
        anti_conceal = {
            enabled = false,
        },
        latex = {
            enabled = true,
            converter = { 'latex2text', 'utftex' },
            inline = true,
            block = false, -- disable $$...$$ rendering to fix the overlap bug
            highlight = 'RenderMarkdownMath',
            position = 'center',
            top_pad = 0,
            bottom_pad = 0,
        },
    },
    init = function()
        vim.opt.conceallevel = 2
    end,
}

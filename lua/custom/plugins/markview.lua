vim.pack.add { 'https://github.com/OXY2DEV/markview.nvim' }

require("markview").setup({
    markdown = {
        code_blocks = {
            style = "block",
            sign = false,
            border_hl = nil,
            info_hl = nil,
            label_direction = "right",
            label_hl = nil,
            min_width = 60,
            pad_amount = 2,
            pad_char = " ",
            default = {
                block_hl = nil,
                pad_hl = nil,
            },
        },
        headings = {
            heading_1 = { style = "icon", icon = "", hl = "MarkviewHeading1" },
            heading_2 = { style = "icon", icon = "", hl = "MarkviewHeading2" },
            heading_3 = { style = "icon", icon = "", hl = "MarkviewHeading3" },
            heading_4 = { style = "icon", icon = "", hl = "MarkviewHeading4" },
            heading_5 = { style = "icon", icon = "", hl = "MarkviewHeading5" },
            heading_6 = { style = "icon", icon = "", hl = "MarkviewHeading6" },
            setext_1 = { style = "simple", hl = "MarkviewHeading1" },
            setext_2 = { style = "simple", hl = "MarkviewHeading2" },
            shift_width = 0,
        },
    },
})

-- Clear background colors from markview highlight groups
local function clear_markview_bgs()
    for i = 1, 6 do
        local hl = vim.api.nvim_get_hl(0, { name = "MarkviewHeading" .. i, link = false })
        vim.api.nvim_set_hl(0, "MarkviewHeading" .. i, { fg = hl.fg, bold = hl.bold, italic = hl.italic })
    end
    for _, name in ipairs({ "MarkviewCode", "MarkviewCodeFg" }) do
        local hl = vim.api.nvim_get_hl(0, { name = name, link = false })
        vim.api.nvim_set_hl(0, name, { fg = hl.fg, bold = hl.bold, italic = hl.italic })
    end
end

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = clear_markview_bgs,
})

-- Also apply immediately in case colorscheme is already loaded
vim.schedule(clear_markview_bgs)

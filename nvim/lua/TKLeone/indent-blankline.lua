local highlight = {
    "RainbowGreen",
    "RainbowOrange",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowCyan",
    "RainbowViolet",
    "RainbowRed",
}
local config = require "ibl.config"
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E1C16E" })
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#880808" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#0096FF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#CD7F32" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#4F7942" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#55508d" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#008080" })
end)

require("ibl").setup {indent = { char = "│", highlight = highlight }, scope =  {highlight = highlight}}

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "oscura-midnight"

local c = {
	bg = "#0B0B0F",
	fg = "#E6E6E6",
	selection = "#EAEC8A21",
	comment = "#46474F",
	gray = "#868F97",
	yellow = "#E6E7A3",
	orange = "#F9B98C",
	red = "#D84F68",
	teal = "#54C0A3",
	green = "#4EBE96",
	blue = "#479FFA",
	warning = "#D2D714",
	error = "#FF5C5C",
}

local set = vim.api.nvim_set_hl

-- Basic
set(0, "Normal", { fg = c.fg, bg = c.bg })
set(0, "Comment", { fg = c.comment, italic = true })
set(0, "Visual", { bg = c.selection })

-- Syntax
set(0, "String", { fg = c.fg })
set(0, "Keyword", { fg = c.gray })
set(0, "Function", { fg = c.yellow })
set(0, "Number", { fg = c.orange })
set(0, "Type", { fg = c.yellow })
set(0, "Identifier", { fg = c.fg })
set(0, "Constant", { fg = c.orange, italic = true })
set(0, "Operator", { fg = c.gray })

-- Diagnostics
set(0, "DiagnosticError", { fg = c.error })
set(0, "DiagnosticWarn", { fg = c.warning })
set(0, "DiagnosticInfo", { fg = c.blue })
set(0, "DiagnosticHint", { fg = c.green })

-- Plugin (basic) support
set(0, "GitSignsAdd", { fg = c.green })
set(0, "GitSignsChange", { fg = c.yellow })
set(0, "GitSignsDelete", { fg = c.red })

set(0, "NvimTreeNormal", { fg = c.gray, bg = c.bg })
set(0, "TelescopeNormal", { fg = c.fg, bg = c.bg })
set(0, "TelescopeSelection", { bg = "#FFFFFF16" })

-- LSP floats
set(0, "NormalFloat", { fg = c.fg, bg = "#161616" })
set(0, "FloatBorder", { fg = c.gray })

-- Cursorline & matching brackets
set(0, "CursorLine", { bg = "#FFFFFF08" })
set(0, "MatchParen", { fg = c.yellow, underline = true })

-- Statusline
set(0, "StatusLine", { fg = c.gray, bg = c.bg })
set(0, "StatusLineNC", { fg = "#555555", bg = c.bg })

-- Indentation guides
set(0, "IndentBlanklineChar", { fg = "#34343480" })

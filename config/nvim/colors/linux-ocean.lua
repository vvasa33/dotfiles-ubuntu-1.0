-- Linux Ocean — light neo-brutalist colorscheme
-- Tokens: #f8fdff #00334d #24a9e8 #0075bc #b8e6f7

vim.g.colors_name = "linux-ocean"
vim.o.background = "light"
vim.o.termguicolors = true

local c = {
  bg = "#f8fdff",
  bg_alt = "#e8f6fc",
  bg_dark = "#b8e6f7",
  fg = "#00334d",
  fg_dim = "#4a7085",
  fg_muted = "#6a8fa3",
  navy = "#00334d",
  cyan = "#24a9e8",
  blue = "#0075bc",
  white = "#f8fdff",
  red = "#c62828",
  green = "#2e7d52",
  yellow = "#b86e00",
  orange = "#e65100",
  purple = "#5c4d8a",
  bright_red = "#e53935",
  bright_green = "#43a047",
  bright_yellow = "#f9a825",
  bright_cyan = "#5ecfff",
  black = "#002030",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Core UI
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.white })
hi("FloatBorder", { fg = c.navy, bg = c.white })
hi("FloatTitle", { fg = c.navy, bg = c.cyan, bold = true })
hi("WinSeparator", { fg = c.navy })
hi("VertSplit", { fg = c.navy })
hi("LineNr", { fg = c.fg_muted })
hi("CursorLine", { bg = c.bg_alt })
hi("CursorLineNr", { fg = c.navy, bold = true })
hi("CursorColumn", { bg = c.bg_alt })
hi("ColorColumn", { bg = c.bg_alt })
hi("SignColumn", { fg = c.fg_muted, bg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_dark })
hi("FoldColumn", { fg = c.fg_muted, bg = c.bg })
hi("MatchParen", { fg = c.navy, bg = c.cyan, bold = true })
hi("NonText", { fg = c.fg_muted })
hi("SpecialKey", { fg = c.fg_muted })
hi("Whitespace", { fg = c.bg_dark })
hi("EndOfBuffer", { fg = c.bg })
hi("Visual", { fg = c.navy, bg = c.bg_dark })
hi("VisualNOS", { bg = c.bg_dark })
hi("Search", { fg = c.navy, bg = c.cyan })
hi("IncSearch", { fg = c.white, bg = c.navy })
hi("CurSearch", { fg = c.white, bg = c.navy })
hi("Substitute", { fg = c.white, bg = c.blue })
hi("Directory", { fg = c.blue, bold = true })
hi("Title", { fg = c.navy, bold = true })
hi("Question", { fg = c.blue })
hi("MoreMsg", { fg = c.green })
hi("ModeMsg", { fg = c.navy, bold = true })
hi("ErrorMsg", { fg = c.red, bold = true })
hi("WarningMsg", { fg = c.yellow, bold = true })
hi("WildMenu", { fg = c.white, bg = c.navy })
hi("Pmenu", { fg = c.fg, bg = c.white })
hi("PmenuSel", { fg = c.white, bg = c.navy, bold = true })
hi("PmenuSbar", { bg = c.bg_dark })
hi("PmenuThumb", { bg = c.navy })
hi("StatusLine", { fg = c.white, bg = c.navy, bold = true })
hi("StatusLineNC", { fg = c.navy, bg = c.bg_dark })
hi("TabLine", { fg = c.navy, bg = c.bg_dark })
hi("TabLineFill", { bg = c.bg })
hi("TabLineSel", { fg = c.white, bg = c.navy, bold = true })
hi("QuickFixLine", { bg = c.bg_dark })
hi("SpellBad", { sp = c.red, undercurl = true })
hi("SpellCap", { sp = c.blue, undercurl = true })
hi("SpellRare", { sp = c.purple, undercurl = true })
hi("SpellLocal", { sp = c.cyan, undercurl = true })
hi("DiffAdd", { bg = "#d6efe0" })
hi("DiffChange", { bg = "#d9eef8" })
hi("DiffDelete", { bg = "#f5d6d6" })
hi("DiffText", { bg = c.cyan, fg = c.navy })

-- Syntax
hi("Comment", { fg = c.fg_muted, italic = true })
hi("Constant", { fg = c.blue })
hi("String", { fg = c.green })
hi("Character", { fg = c.green })
hi("Number", { fg = c.orange })
hi("Boolean", { fg = c.orange, bold = true })
hi("Float", { fg = c.orange })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.blue, bold = true })
hi("Statement", { fg = c.navy, bold = true })
hi("Conditional", { fg = c.navy, bold = true })
hi("Repeat", { fg = c.navy, bold = true })
hi("Label", { fg = c.cyan })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.navy, bold = true })
hi("Exception", { fg = c.red })
hi("PreProc", { fg = c.purple })
hi("Include", { fg = c.purple })
hi("Define", { fg = c.purple })
hi("Macro", { fg = c.purple })
hi("Type", { fg = c.cyan, bold = true })
hi("StorageClass", { fg = c.navy })
hi("Structure", { fg = c.cyan })
hi("Typedef", { fg = c.cyan })
hi("Special", { fg = c.blue })
hi("SpecialChar", { fg = c.orange })
hi("Tag", { fg = c.cyan })
hi("Delimiter", { fg = c.fg_dim })
hi("SpecialComment", { fg = c.fg_muted, italic = true })
hi("Underlined", { underline = true })
hi("Bold", { bold = true })
hi("Italic", { italic = true })
hi("Todo", { fg = c.navy, bg = c.cyan, bold = true })
hi("Error", { fg = c.red, bold = true })

-- Treesitter
hi("@comment", { link = "Comment" })
hi("@string", { link = "String" })
hi("@character", { link = "Character" })
hi("@number", { link = "Number" })
hi("@boolean", { link = "Boolean" })
hi("@float", { link = "Float" })
hi("@function", { link = "Function" })
hi("@function.builtin", { fg = c.blue, bold = true })
hi("@function.call", { fg = c.blue })
hi("@method", { fg = c.blue })
hi("@method.call", { fg = c.blue })
hi("@constructor", { fg = c.cyan })
hi("@parameter", { fg = c.fg })
hi("@keyword", { link = "Keyword" })
hi("@keyword.function", { fg = c.navy, bold = true })
hi("@keyword.return", { fg = c.navy, bold = true })
hi("@keyword.operator", { fg = c.navy })
hi("@conditional", { link = "Conditional" })
hi("@repeat", { link = "Repeat" })
hi("@label", { link = "Label" })
hi("@operator", { link = "Operator" })
hi("@exception", { link = "Exception" })
hi("@type", { link = "Type" })
hi("@type.builtin", { fg = c.cyan, bold = true })
hi("@storageclass", { link = "StorageClass" })
hi("@structure", { link = "Structure" })
hi("@namespace", { fg = c.purple })
hi("@include", { link = "Include" })
hi("@preproc", { link = "PreProc" })
hi("@constant", { link = "Constant" })
hi("@constant.builtin", { fg = c.orange, bold = true })
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.navy, bold = true })
hi("@property", { fg = c.fg })
hi("@field", { fg = c.fg })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg_dim })
hi("@punctuation.special", { fg = c.blue })
hi("@tag", { fg = c.blue, bold = true })
hi("@tag.attribute", { fg = c.cyan })
hi("@tag.delimiter", { fg = c.fg_dim })
hi("@text", { fg = c.fg })
hi("@text.strong", { bold = true })
hi("@text.emphasis", { italic = true })
hi("@text.underline", { underline = true })
hi("@text.title", { fg = c.navy, bold = true })
hi("@text.literal", { fg = c.green })
hi("@text.uri", { fg = c.blue, underline = true })
hi("@text.todo", { link = "Todo" })
hi("@text.danger", { fg = c.red, bold = true })
hi("@text.warning", { fg = c.yellow, bold = true })
hi("@string.escape", { fg = c.orange })
hi("@string.special", { fg = c.orange })

-- Diagnostics
hi("DiagnosticError", { fg = c.red })
hi("DiagnosticWarn", { fg = c.yellow })
hi("DiagnosticInfo", { fg = c.blue })
hi("DiagnosticHint", { fg = c.cyan })
hi("DiagnosticOk", { fg = c.green })
hi("DiagnosticUnderlineError", { sp = c.red, undercurl = true })
hi("DiagnosticUnderlineWarn", { sp = c.yellow, undercurl = true })
hi("DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
hi("DiagnosticUnderlineHint", { sp = c.cyan, undercurl = true })
hi("DiagnosticVirtualTextError", { fg = c.red, bg = "#f5d6d6" })
hi("DiagnosticVirtualTextWarn", { fg = c.yellow, bg = "#f5ecd6" })
hi("DiagnosticVirtualTextInfo", { fg = c.blue, bg = "#d9eef8" })
hi("DiagnosticVirtualTextHint", { fg = c.cyan, bg = c.bg_dark })

-- LSP
hi("LspReferenceText", { bg = c.bg_dark })
hi("LspReferenceRead", { bg = c.bg_dark })
hi("LspReferenceWrite", { bg = c.cyan, fg = c.navy })
hi("LspInlayHint", { fg = c.fg_muted, bg = c.bg_alt })
hi("LspSignatureActiveParameter", { fg = c.navy, bg = c.cyan, bold = true })

-- Git signs
hi("GitSignsAdd", { fg = c.green })
hi("GitSignsChange", { fg = c.blue })
hi("GitSignsDelete", { fg = c.red })
hi("DiffviewFilePanelTitle", { fg = c.navy, bold = true })

-- LazyVim / Snacks / Telescope / Neo-tree
hi("TelescopeNormal", { fg = c.fg, bg = c.white })
hi("TelescopeBorder", { fg = c.navy, bg = c.white })
hi("TelescopePromptBorder", { fg = c.navy, bg = c.bg_dark })
hi("TelescopePromptNormal", { fg = c.navy, bg = c.bg_dark })
hi("TelescopePromptPrefix", { fg = c.navy, bg = c.bg_dark, bold = true })
hi("TelescopePromptTitle", { fg = c.white, bg = c.navy, bold = true })
hi("TelescopeResultsTitle", { fg = c.navy, bg = c.cyan, bold = true })
hi("TelescopePreviewTitle", { fg = c.white, bg = c.blue, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.navy, bold = true })
hi("TelescopeMatching", { fg = c.blue, bold = true })

hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryName", { fg = c.blue, bold = true })
hi("NeoTreeDirectoryIcon", { fg = c.blue })
hi("NeoTreeRootName", { fg = c.navy, bold = true })
hi("NeoTreeGitAdded", { fg = c.green })
hi("NeoTreeGitModified", { fg = c.blue })
hi("NeoTreeGitDeleted", { fg = c.red })
hi("NeoTreeIndentMarker", { fg = c.bg_dark })
hi("NeoTreeExpander", { fg = c.navy })
hi("NeoTreeFloatBorder", { fg = c.navy, bg = c.white })
hi("NeoTreeTitleBar", { fg = c.white, bg = c.navy })

hi("WhichKey", { fg = c.navy, bold = true })
hi("WhichKeyGroup", { fg = c.blue })
hi("WhichKeyDesc", { fg = c.fg })
hi("WhichKeySeparator", { fg = c.fg_muted })
hi("WhichKeyFloat", { bg = c.white })
hi("WhichKeyBorder", { fg = c.navy })

hi("NotifyBACKGROUND", { bg = c.white })
hi("NotifyERRORBorder", { fg = c.navy })
hi("NotifyWARNBorder", { fg = c.navy })
hi("NotifyINFOBorder", { fg = c.navy })
hi("NotifyDEBUGBorder", { fg = c.navy })
hi("NotifyTRACEBorder", { fg = c.navy })
hi("NotifyERRORIcon", { fg = c.red })
hi("NotifyWARNIcon", { fg = c.yellow })
hi("NotifyINFOIcon", { fg = c.cyan })
hi("NotifyERRORTitle", { fg = c.red, bold = true })
hi("NotifyWARNTitle", { fg = c.yellow, bold = true })
hi("NotifyINFOTitle", { fg = c.navy, bold = true })

hi("BufferLineFill", { bg = c.bg })
hi("BufferLineBackground", { fg = c.navy, bg = c.bg_dark })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.navy, bold = true })
hi("BufferLineBufferVisible", { fg = c.navy, bg = c.bg_alt })
hi("BufferLineIndicatorSelected", { fg = c.cyan, bg = c.navy })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_dark })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.navy })
hi("BufferLineModified", { fg = c.cyan, bg = c.bg_dark })
hi("BufferLineModifiedSelected", { fg = c.cyan, bg = c.navy })

hi("MiniStatuslineModeNormal", { fg = c.white, bg = c.navy, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.navy, bg = c.cyan, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.white, bg = c.blue, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.white, bg = c.red, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.navy, bg = c.bg_dark, bold = true })
hi("MiniIndentscopeSymbol", { fg = c.cyan })

hi("DashboardHeader", { fg = c.navy, bold = true })
hi("DashboardCenter", { fg = c.fg })
hi("DashboardShortcut", { fg = c.cyan, bold = true })
hi("DashboardFooter", { fg = c.fg_muted })

hi("SnacksDashboardHeader", { fg = c.navy, bold = true })
hi("SnacksDashboardDesc", { fg = c.fg })
hi("SnacksDashboardKey", { fg = c.cyan, bold = true })
hi("SnacksDashboardIcon", { fg = c.blue })
hi("SnacksDashboardFooter", { fg = c.fg_muted })
hi("SnacksPicker", { fg = c.fg, bg = c.white })
hi("SnacksPickerBorder", { fg = c.navy, bg = c.white })
hi("SnacksPickerTitle", { fg = c.white, bg = c.navy, bold = true })
hi("SnacksPickerMatch", { fg = c.blue, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.navy })

hi("FlashLabel", { fg = c.white, bg = c.navy, bold = true })
hi("FlashMatch", { fg = c.navy, bg = c.cyan })
hi("FlashCurrent", { fg = c.white, bg = c.blue })

hi("NoiceCmdlinePopupBorder", { fg = c.navy })
hi("NoiceCmdlineIcon", { fg = c.navy })
hi("NoicePopupmenuSelected", { fg = c.white, bg = c.navy })

hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrMatch", { fg = c.blue, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.cyan, bold = true })
hi("CmpItemKind", { fg = c.navy })
hi("CmpItemMenu", { fg = c.fg_muted })

hi("LazyNormal", { fg = c.fg, bg = c.white })
hi("LazyButton", { fg = c.navy, bg = c.bg_dark })
hi("LazyButtonActive", { fg = c.white, bg = c.navy, bold = true })
hi("LazyH1", { fg = c.white, bg = c.navy, bold = true })
hi("LazyH2", { fg = c.navy, bold = true })
hi("LazyProgressDone", { fg = c.cyan })
hi("LazyProgressTodo", { fg = c.bg_dark })

-- Terminal ANSI (matches kitty)
hi("Terminal", { fg = c.fg, bg = c.bg })
vim.g.terminal_color_0 = c.navy
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.fg_dim
vim.g.terminal_color_8 = c.fg_muted
vim.g.terminal_color_9 = c.bright_red
vim.g.terminal_color_10 = c.bright_green
vim.g.terminal_color_11 = c.bright_yellow
vim.g.terminal_color_12 = c.cyan
vim.g.terminal_color_13 = "#8e6bc4"
vim.g.terminal_color_14 = c.bright_cyan
vim.g.terminal_color_15 = c.black

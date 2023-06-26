vim.g.gruvbox_bold = 0
vim.g.gruvbox_sign_column = "bg0"
vim.g.gruvbox_invert_selection = 0

vim.cmd("runtime colors/gruvbox.vim")
require("lualine").setup({ options = { theme = "gruvbox" } })

local function hi(...)
  vim.api.nvim_set_hl(0, ...)
end

hi("MiniIndentscopeSymbol", { link = "GruvboxBg4" })

hi("NeoTreeRootName", { link = "NeoTreeDirectoryName", nocombine = true })
hi("NeoTreeDirectoryIcon", { link = "GruvboxGray" })
hi("NeoTreeIndentMarker", { link = "GruvboxBg2" })

hi("NavicIconsFile", { link = "GruvboxBlue" })
hi("NavicIconsModule", { link = "GruvboxOrange" })
hi("NavicIconsNamespace", { link = "GruvboxBlue" })
hi("NavicIconsPackage", { link = "GruvboxAqua" })
hi("NavicIconsClass", { link = "GruvboxYellow" })
hi("NavicIconsMethod", { link = "GruvboxBlue" })
hi("NavicIconsProperty", { link = "GruvboxAqua" })
hi("NavicIconsField", { link = "GruvboxPurple" })
hi("NavicIconsConstructor", { link = "GruvboxBlue" })
hi("NavicIconsEnum", { link = "GruvboxPurple" })
hi("NavicIconsInterface", { link = "GruvboxGreen" })
hi("NavicIconsFunction", { link = "GruvboxBlue" })
hi("NavicIconsVariable", { link = "GruvboxPurple" })
hi("NavicIconsConstant", { link = "GruvboxOrange" })
hi("NavicIconsString", { link = "GruvboxGreen" })
hi("NavicIconsNumber", { link = "GruvboxOrange" })
hi("NavicIconsBoolean", { link = "GruvboxOrange" })
hi("NavicIconsArray", { link = "GruvboxOrange" })
hi("NavicIconsObject", { link = "GruvboxOrange" })
hi("NavicIconsKey", { link = "GruvboxAqua" })
hi("NavicIconsNull", { link = "GruvboxOrange" })
hi("NavicIconsEnumMember", { link = "GruvboxYellow" })
hi("NavicIconsStruct", { link = "GruvboxPurple" })
hi("NavicIconsEvent", { link = "GruvboxYellow" })
hi("NavicIconsOperator", { link = "GruvboxRed" })
hi("NavicIconsTypeParameter", { link = "GruvboxRed" })
hi("NavicText", { link = "GruvboxWhite" })
hi("NavicSeparator", { link = "GruvboxWhite" })

hi("DiagnosticError", { link = "GruvboxRed" })
hi("DiagnosticWarn", { link = "GruvboxYellow" })
hi("DiagnosticInfo", { link = "GruvboxBlue" })
hi("DiagnosticHint", { link = "GruvboxAqua" })
hi("DiagnosticUnderlineError", { link = "GruvboxRedUnderline" })
hi("DiagnosticUnderlineWarn", { link = "GruvboxYellowUnderline" })
hi("DiagnosticUnderlineInfo", { link = "GruvboxBlueUnderline" })
hi("DiagnosticUnderlineHint", { link = "GruvboxAquaUnderline" })

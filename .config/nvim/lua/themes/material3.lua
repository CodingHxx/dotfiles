-- Auto-generated Material 3 theme for NvChad
-- Generated from wallpaper: /home/aaki/Pictures/Wallpapers/Blue-Dark.png
-- Mode: dark
-- Source color: #51b1d9

---@type Base46Table
local M = {}

-- UI Colors from Material 3
M.base_30 = {
  white = "#dfe3e6",
  black = "#101416",
  darker_black = "#101416",
  black2 = "#181c1f",
  one_bg = "#1c2023",
  one_bg2 = "#262b2d",
  one_bg3 = "#313538",
  grey = "#3f484e",
  grey_fg = "#bec8ce",
  grey_fg2 = "#889298",
  light_grey = "#3f484e",
  
  -- Accent colors
  red = "#ffb4ab",
  baby_pink = "#93000a",
  pink = "#ffb875",
  line = "#889298",
  green = "#ffb875",
  vibrant_green = "#e29548",
  nord_blue = "#aacbdd",
  blue = "#75d2fb",
  seablue = "#51b1d9",
  yellow = "#ffb875",
  sun = "#ffdcc0",
  purple = "#aacbdd",
  dark_purple = "#2b4b5a",
  teal = "#51b1d9",
  orange = "#ffb875",
  cyan = "#75d2fb",
  
  -- UI elements
  statusline_bg = "#1c2023",
  lightbg = "#262b2d",
  pmenu_bg = "#75d2fb",
  folder_bg = "#75d2fb"
}

-- Syntax highlighting colors (base16 format)
M.base_16 = {
  base00 = "#101416",                    -- Default Background
  base01 = "#1c2023",           -- Lighter Background
  base02 = "#262b2d",       -- Selection Background
  base03 = "#889298",                    -- Comments, Invisibles
  base04 = "#bec8ce",           -- Dark Foreground
  base05 = "#dfe3e6",                  -- Default Foreground
  base06 = "#dfe3e6",                  -- Light Foreground
  base07 = "#353a3c",              -- Light Background
  base08 = "#ffb4ab",                      -- Variables, Tags
  base09 = "#ffb875",                   -- Integers, Constants
  base0A = "#75d2fb",                    -- Classes, Search
  base0B = "#ffb875",                   -- Strings
  base0C = "#51b1d9",           -- Regex, Escapes
  base0D = "#75d2fb",                    -- Functions, Methods
  base0E = "#aacbdd",                  -- Keywords, Storage
  base0F = "#93000a"              -- Deprecated
}

-- Optional: Custom highlights
M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#889298",
      italic = true,
    },
    LineNr = {
      fg = "#3f484e",
    },
    CursorLine = {
      bg = "#181c1f",
    },
    CursorLineNr = {
      fg = "#75d2fb",
      bold = true,
    },
    Visual = {
      bg = "#51b1d9",
    },
    Pmenu = {
      bg = "#1c2023",
    },
    PmenuSel = {
      bg = "#51b1d9",
      fg = "#004156",
    },
    StatusLine = {
      bg = "#1c2023",
      fg = "#dfe3e6",
    },
    TabLine = {
      bg = "#181c1f",
      fg = "#bec8ce",
    },
    TabLineSel = {
      bg = "#51b1d9",
      fg = "#004156",
    },
    NvimTreeNormal = {
      bg = "#181c1f",
    },
    NvimTreeFolderIcon = {
      fg = "#75d2fb",
    },
  },
  
  treesitter = {
    ["@keyword"] = { fg = "#aacbdd" },
    ["@function"] = { fg = "#75d2fb" },
    ["@function.builtin"] = { fg = "#51b1d9" },
    ["@variable"] = { fg = "#dfe3e6" },
    ["@variable.builtin"] = { fg = "#ffb875" },
    ["@string"] = { fg = "#ffb875" },
    ["@number"] = { fg = "#ffb875" },
    ["@boolean"] = { fg = "#ffb875" },
    ["@constant"] = { fg = "#ffb875" },
    ["@type"] = { fg = "#aacbdd" },
    ["@parameter"] = { fg = "#dfe3e6" },
    ["@property"] = { fg = "#dfe3e6" },
    ["@operator"] = { fg = "#bec8ce" },
    ["@punctuation"] = { fg = "#3f484e" },
    ["@comment"] = { 
      fg = "#889298", 
      italic = true 
    },
    ["@tag"] = { fg = "#ffb4ab" },
    ["@tag.attribute"] = { fg = "#ffb875" },
    ["@tag.delimiter"] = { fg = "#3f484e" },
  },

  lsp = {
    DiagnosticError = { fg = "#ffb4ab" },
    DiagnosticWarn = { fg = "#ffb875" },
    DiagnosticInfo = { fg = "#75d2fb" },
    DiagnosticHint = { fg = "#aacbdd" },
    DiagnosticUnderlineError = { 
      undercurl = true, 
      sp = "#ffb4ab" 
    },
    DiagnosticUnderlineWarn = { 
      undercurl = true, 
      sp = "#ffb875" 
    },
    DiagnosticUnderlineInfo = { 
      undercurl = true, 
      sp = "#75d2fb" 
    },
    DiagnosticUnderlineHint = { 
      undercurl = true, 
      sp = "#aacbdd" 
    },
  },

  telescope = {
    TelescopePromptBorder = { fg = "#75d2fb" },
    TelescopeResultsBorder = { fg = "#889298" },
    TelescopePreviewBorder = { fg = "#889298" },
    TelescopeSelection = { 
      bg = "#51b1d9", 
      fg = "#004156" 
    },
    TelescopeMatching = { fg = "#75d2fb", bold = true },
  },

  cmp = {
    CmpItemAbbrMatch = { fg = "#75d2fb", bold = true },
    CmpItemAbbrMatchFuzzy = { fg = "#75d2fb" },
    CmpItemKindVariable = { fg = "#dfe3e6" },
    CmpItemKindFunction = { fg = "#75d2fb" },
    CmpItemKindKeyword = { fg = "#aacbdd" },
    CmpItemKindConstant = { fg = "#ffb875" },
    CmpItemKindModule = { fg = "#aacbdd" },
  },

  git = {
    DiffAdd = { fg = "#ffb875" },
    DiffChange = { fg = "#75d2fb" },
    DiffDelete = { fg = "#ffb4ab" },
    GitSignsAdd = { fg = "#ffb875" },
    GitSignsChange = { fg = "#75d2fb" },
    GitSignsDelete = { fg = "#ffb4ab" },
  },
}

-- Set theme type based on wallpaper analysis
M.type = "dark"

-- Override theme
M = require("base46").override_theme(M, "material3")

return M

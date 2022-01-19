local api = vim.api

local utils_ok, utils = pcall(require, "utils")
if not utils_ok then
  return
end

local lsp_status_ok, lsp_status = pcall(require, "lsp-status")
if not lsp_status_ok then
  return
end

local function lsp_progress()
  return lsp_status.status()
end

local components = {
  buffers = { "buffers" },
  encoding = { "o:encoding", fmt = string.upper },
  filename = { "filename" },
  filetype = { "filetype" },
  location = { "location" },
  progress = { "progress" },
  tabs = { "tabs", mode = 0 },
  mode = {
    function()
      return " "
    end,
    padding = { left = 0, right = 0 },
  },
  diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    symbols = { error = " ", warn = " ", info = " ", hint = " " },
  },
  treesitter = {
    function()
      local b = api.nvim_get_current_buf()
      if next(vim.treesitter.highlighter.active[b]) then
        return ""
      end
      return ""
    end,
  },
}

local lualine_ok, lualine = pcall(require, "lualine")
if not lualine_ok then
  return
end

-- define how the statusline and tabline appear
lualine.setup({
  options = {
    theme = 'gruvbox_dark',
    icons_enabled = true,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      components.diff,
    },
    lualine_x = {
      lsp_progress,
      components.diagnostics,
    },
    lualine_y = {
      components.treesitter,
    },
    lualine_z = {},
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {
      components.filename,
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {
    lualine_a = {},
    lualine_b = { components.buffers },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { components.tabs },
    lualine_z = {},
  },
  extensions = { "nvim-tree" },
})

require("_options")
require("_plugins")
require("_plugins_config")
require("_lsp")
require("_treesitter")
require("_telescope")
require("_whichkey")
require("_null-ls")
require("_terminal")
require("_remap")

vim.cmd('colorscheme gruvbox')

-- important to import after colorscheme
require("_statusline")

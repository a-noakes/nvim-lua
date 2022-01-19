vim.api.nvim_set_keymap(
  "i",
  "kj",
  "<esc>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<leader>tp",
  ":new<cr>:term<CR>python<CR>k",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<leader><Up>",
  ":resize +5<CR>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<leader><Down>",
  ":resize -5<CR>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<leader><Left>",
  ":vertical resize +5<CR>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<leader><right>",
  ":vertical resize -5<cr>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<C-n>",
  ":NvimTreeToggle<CR>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<Leader>n",
  ":NvimTreeFindFile<CR>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "F6",
  "let $VIM_DIR=expand('%:p:h')<CR>:terminal<CR>cd $VIM_DIR<CR>",
  { noremap = true }
 )



-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>-",
--   ":exe "resize " . (winheight(0) * 2/3)<CR>",
--   { noremap = true }
--   )
-- 
-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader><",
--   ":exe "vertical  resize " . (winheight(0) * 2/3)<CR>",
--   { noremap = true }
--   )
-- 
-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>>",
--   ":exe "vertical  resize " . (winheight(0) * 3/2)<CR>",
-- { noremap = true }
--   )
-- 




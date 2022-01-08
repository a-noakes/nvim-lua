vim.api.nvim_set_keymap(
  "i",
  "kj",
  "<esc>",
  { noremap = true }
 )

vim.api.nvim_set_keymap(
  "n",
  "<leader>tp",
  ":new<cr>:term<CR>ipy3<CR>k",
  { noremap = true }
 )

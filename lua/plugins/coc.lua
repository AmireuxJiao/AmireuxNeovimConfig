-- coc configs
vim.opt.updatetime = 300
local keyset = vim.keymap.set
local api = vim.api

-- Autocomplete
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
keyset("i", "<C-j>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
-- keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
keyset("n", "<Leader>-", "<Plug>(coc-diagnostic-prev)", { silent = true })
keyset("n", "<Leader>=", "<Plug>(coc-diagnostic-next)", { silent = true })

keyset("n", "gd", "<Plug>(coc-definition)", { silent = true })
keyset("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
keyset("n", "gi", "<Plug>(coc-implementation)", { silent = true })
keyset("n", "gr", "<Plug>(coc-references)", { silent = true })
-- Use <Leader>h to show documentation in preview window
function _G.show_docs()
  local cw = vim.fn.expand('<cword>')
  if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
    api.nvim_command('h ' .. cw)
  elseif vim.api.nvim_eval('coc#rpc#ready()') then
    vim.fn.CocActionAsync('doHover')
  else
    api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
  end
end

keyset("n", "<leader>h", '<CMD>lua _G.show_docs()<CR>', { silent = true })

-- Symbol renaming
keyset("n", "<leader>rn", "<Plug>(coc-rename)", { silent = true })

-- 映射 <leader>ca 到显示 coc.nvim 错误信息的命令

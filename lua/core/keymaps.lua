local opts = {
  noremap=true,
  silent=true,
}
local keymap = vim.keymap

vim.g.mapleader = " "

-- --------- 插入模式 ----------- -- 

-- --------- 视觉模式 ----------- -- 
-- -- 单行多行移动
-- keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- --------- 正常模式 ----------- -- 
-- TODO:
keymap.set("n", "R", ":so<CR>")
keymap.set("n", "<leader>q", ":q<CR>")

-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平增加窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 水平增加窗口
keymap.set("n", "<C-s>", ":w<CR>")

-- 增大或缩小窗口
keymap.set("n", "<C-up>", ":res +2<CR>", opts)
keymap.set("n", "<C-down>", ":res -2<CR>")
keymap.set("n", "<C-left>", ":vertical resize+2<CR>", opts)
keymap.set("n", "<C-right>", ":vertical resize-2<CR>", opts)

-- 切换窗口
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- 取消高亮 --
keymap.set("n","<leader>nh", ":nohl<CR>")

-- 切换buffer --
keymap.set("n", "<M-]>", ":bnext<CR>")
keymap.set("n", "<M-[>", ":bprevious<CR>")

-- 缩进代码--
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- 上下快速移动 --
keymap.set("n", "J", "5j", opts)
keymap.set("n", "K", "5k", opts)

-- NERETree -- 
-- keymap.set("n", "<C-n>", ":NERDTree<CR>", opts)
keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", opts)
keymap.set("n", "<leader><F2>", ":NERDTreeFind<CR>", opts)
-- keymap.set("n", "<leader>f", ":NERDTree ", opts)

-- -- Dashboard -- 
-- keymap.set("n", "<leader>d", ":Dashboard<CR>", opts)

--bufferline -- 
vim.api.nvim_set_keymap("n", "<leader>do", ":BufferLineCloseLeft<CR>:BufferLineCloseRight<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>db", ":BufferLinePickClose<CR>",{silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<leader>dn", ":bdelete %<CR>", {silent = true, noremap = true})

-- 单行多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- formatter
keymap.set("n", "<leader>f", ":Format<CR>", opts)



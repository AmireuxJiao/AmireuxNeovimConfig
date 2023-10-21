local opt = vim.opt
-- opt.guifont="ShureTechMono Nerd Font Mono:h14"
opt.guifont="CaskaydiaCove Nerd Font Mono:h13"
-- opt.guifont="CodeNewRoman Nerd Font Mono:h13"
-- opt.guifont="Hurmit Nerd Font Mono:h12"
-- opt.guifont="Mononoki Nerd Font Mono:h13"
-- opt.guifont="Cartograph CF:h11"
-- opt.guifont="DaddyTimeMono Nerd Font Mono:h12"

-- opt.gfw="Source Han Sans:h13:cGB2312:b"
--
opt.gfw="Maple Mono SC NF:h13:cGB2312"

-- 行号
opt.relativenumber = true
opt.number = true
vim.wo.colorcolumn = "80"

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 3
-- opt.columns = 80

--  vim.api.nvim_create_autocmd({'TextChangedI', 'TextChangedP'}, {callback = vim.lsp.buf.signature_help, buffer = bufnr}) -- 输入时显示函数签名提示
vim.g.gruvbox_material_foreground = material
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_better_performance = 1
vim.cmd[[colorscheme gruvbox-material]]
-- vim.cmd[[colorscheme tokyonight-night]]

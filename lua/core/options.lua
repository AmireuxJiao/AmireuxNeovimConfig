local opt = vim.opt
-- opt.guifont="ShureTechMono Nerd Font Mono:h12"
opt.guifont="CaskaydiaCove Nerd Font Mono:h12"
-- opt.guifont="CodeNewRoman Nerd Font Mono:w12"
-- opt.guifont="GohuFont 14 Nerd Font Mono:h12"
-- opt.guifont="Hurmit Nerd Font Mono:h12"
-- opt.guifont="ProFont IIx Nerd Font Mono:h11"
-- opt.guifont="3270 Nerd Font Mono:h12"
-- opt.guifont="BigBlueTerm437 Nerd Font Mono:h12"
-- opt.guifont="ProFontWindows Nerd Font Mono:h12"
-- opt.guifont="Ubuntu Nerd Font Propo:h12"
-- opt.guifont="Symbols Nerd Font Mono:h12"
-- opt.guifont="Mononoki Nerd Font Mono:h12"
-- opt.guifont="DaddyTimeMono Nerd Font Mono:h12"
-- opt.guifont="ComicShannsMono Nerd Font ProFont:h13"
-- opt.guifont="AurulentSansM Nerd Font ProFont:h12"
-- opt.guifont="Agave Nerd Font:h12"
-- opt.guifont="Agave Nerd Font Propo:h12"

opt.gfw="Source Han Sans:h10:cGB2312"

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
opt.columns = 80

-- vim.api.nvim_create_autocmd({'TextChangedI', 'TextChangedP'}, {callback = vim.lsp.buf.signature_help, buffer = bufnr}) -- 输入时显示函数签名提示
-- vim.g.gruvbox_material_foreground = material
-- vim.g.gruvbox_material_background = 'hard'
-- vim.g.gruvbox_material_better_performance = 1
-- vim.cmd[[colorscheme gruvbox-material]]
vim.cmd[[colorscheme tokyonight-night]]

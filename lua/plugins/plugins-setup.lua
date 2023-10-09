local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- 保存文件自动安装
-- 注意 PackerCompile 改成 PackerSync
vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  -- 插件管理器
  use 'wbthomason/packer.nvim'
  -- 主题
  use 'folke/tokyonight.nvim'
  use 'sainnhe/gruvbox-material'
  -- 启动界面
  use {
    'nvimdev/dashboard-nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  }
  -- 文件树 
  use "preservim/nerdtree"
  -- 图标
  use "ryanoasis/vim-devicons"
  -- 自动注释
  use "numToStr/Comment.nvim"
  -- 标签栏
  use "akinsho/bufferline.nvim"
  -- 格式化
  use "mhartington/formatter.nvim"
  -- 状态栏
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  -- 高亮
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- tabnine
  -- Get platform dependant build script
  -- local function tabnine_build_path()
  --   if vim.loop.os_uname().sysname == "Windows_NT" then
  --     return "pwsh.exe -file .\\dl_binaries.ps1"
  --   else
  --     return "./dl_binaries.sh"
  --   end
  -- end
  -- use {
  --   'codota/tabnine-nvim', build = tabnine_build_path()
  -- }

  -- coc.nvim
  use {'neoclide/coc.nvim', branch = 'release'}
  -- copilot.nvim
  use {'github/copilot.vim'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)





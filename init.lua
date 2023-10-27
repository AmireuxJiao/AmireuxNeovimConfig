--                                                            __                
--                                                              \               
--                                                              ||            _ 
--                                                             <||          /|  
--  ___________________________________________________________/||          |/  
-- /                  AMIREUX--NEOVIM                        //o|/\/\/\/\/\||/\ 
--/__________________________________________________________\o|||||||||||||/**\
--\                                                          /o|||||||||||||\**/
-- \_________________________________________________________\\o|\/\/\/\/\/||\/ 
--                                                             \||          |\  
--                                                             <||          \|_ 
--                                                              ||              
--                                                            __/               
require("core.keymaps")
require("core.options")
require("plugins.plugins-setup")
require("plugins.coc")
require("plugins.copilot")

-- bufferline
require("bufferline").setup({
  options = {
    diagnostics = 'nvim-lsp',
    max_prefix_length = 8,
  },
})

-- 状态栏
require("lualine").setup({
  options = {
    -- theme = "gruvbox_light",
    theme = "tokyonight",
  }
})

-- comment
require("Comment").setup({})

-- 启动界面
require("dashboard").setup({
  theme = 'doom',
  config = {
    header = {
        -- [[                                                            __                 ]],
        -- [[                                                              \                ]],
        -- [[                                                              ||            _  ]],
        -- [[                                                             <||          /|   ]],
        -- [[  ___________________________________________________________/||          |/   ]],
        -- [[ /                  AMIREUX--NEOVIM                        //o|/\/\/\/\/\||/\  ]],
        -- [[/__________________________________________________________\o|||||||||||||/**\ ]],
        -- [[\                                                          /o|||||||||||||\**/ ]],
        -- [[ \_________________________________________________________\\o|\/\/\/\/\/||\/  ]],
        -- [[                                                             \||          |\   ]],
        -- [[                                                             <||          \|_  ]],
        -- [[                                                              ||               ]],
        -- [[                                                            __/                ]],
        [[]],
        [[]],
        [[]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠖⠋⠉⠉⠳⡴⠒⠒⠒⠲⠤⢤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠊⠀⠀⡴⠚⡩⠟⠓⠒⡖⠲⡄⠀⠀⠈⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠁⢠⠒⠾⢥⣀⣇⣚⣹⡤⡟⠀⡇⢠⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣄⣀⠀⡇⠀⠀⠀⠀⠀⢀⡜⠁⣸⢠⠎⣰⣃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡍⠀⠉⠉⠛⠦⣄⠀⢀⡴⣫⠴⠋⢹⡏⡼⠁⠈⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡽⣄⠀⠀⠀⠀⠈⠙⠻⣎⡁⠀⠀⣸⡾⠀⠀⠀⠀⣀⡹⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠁⠀⠈⢣⡀⠀⠀⠀⠀⠀⠀⠉⠓⠶⢟⠀⢀⡤⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠒⠦⡀⠙⠦⣀⠀⠀⠀⠀⠀⠀⢀⣴⡷⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢦⣀⠈⠓⣦⣤⣤⣤⢶⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢤⣤⣤⡤⠤⠤⠤⠤⣌⡉⠉⠁⠀⠀⢸⢸⠁⡠⠖⠒⠒⢒⣒⡶⣶⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠲⣍⠓⠦⣄⠀⠀⠙⣆⠀⠀⠀⡞⡼⡼⢀⣠⠴⠊⢉⡤⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠈⠙⢦⡀⢸⡀⠀⢰⢣⡧⠷⣯⣤⠤⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⣲⠤⠬⠿⠧⣠⢏⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠚⠉⠉⢉⣳⣄⣠⠏⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣟⣒⣋⣉⣉⡭⠟⢡⠏⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⢀⠏⣸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠓⠚⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀        ]],
        [[]],
        [[]],
        [[]],
    },
    -- TODO
    center = {
      {icon = "  ", desc = 'Recently lastest session    ', keymap = "<Leader>sl", action = ""},
      {icon = "  ", desc = "Recently opened files       ", keymap = "<Leader>fh", action = "Telescope oldfiles"},
      {icon = "  ", desc = "Find File                   ", keymap = "<leader>ff", action = "Telescope find_files"},
      {icon = "  ", desc = "File Browser                ", keymap = "<leader>fb", action = "Telescope file_browser"},
      {icon = "  ", desc = "Find Word                   ", keymap = "<leader>fw", action = "Telescope live_grep"},
      {icon = "  ", desc = "Open Personal dotfiles      ", keymap = "<leader>ee", action = "edit $MYVIMRC"}
    },
    footer = {
    }
  }
})

-- nvim-formatter
require("formatter").setup({
  filetype = {
    cpp = {
      function ()
        return {
          exe = "clang-format",
          args = {'-assume-filename=%:p', '-style=file'},
          stdin = 1,
        }
      end
    },
    c = {
      function ()
        return {
          exe = "clang-format",
          args = {'-assume-filename=%:p', '-style=file'},
          stdin = 1,
        }
      end
    },
    hpp = {
      function ()
        return {
          exe = "clang-format",
          args = {'-assume-filename=%:p', '-style=file'},
          stdin = 1,
        }
      end
    },
  }
})


require("nvim-treesitter.configs").setup({
ensure_installed = { "c", "cpp", "lua", "vim", "python", "html", "css", "javascript" },
  sync_install = false,
  auto_install = true,
  ignore_install = {"diff"},

  highlight = {
    enable = true,
    disable = {"markdown"},
    additonal_vim_regex_highlighting = false,
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>", -- set to `false` to disable one of the mappings
      node_incremental = "<CR>",
      scope_incremental = "<BS>",
      node_decremental = "<TAB>",
    },
  },
})


local npairs = require('nvim-autopairs')
require("nvim-autopairs").setup({map_cr=false})

-- skip it, if you use another global object
_G.MUtils= {}

-- new version for custom pum
MUtils.completion_confirm=function()
    if vim.fn["coc#pum#visible"]() ~= 0  then
        return vim.fn["coc#pum#confirm"]()
    else
        return npairs.autopairs_cr()
    end
end

vim.api.nvim_set_keymap('i' , 'NULL','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})
local Rule = require('nvim-autopairs.rule')

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = true,-- don't check treesitter on java
    }
})

local ts_conds = require('nvim-autopairs.ts-conds')

-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})















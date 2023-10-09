require("core.keymaps")
require("core.options")
require("plugins.plugins-setup")
require("plugins.coc")

-- bufferline
require("bufferline").setup({
  options = {
    separator_style = "slope",
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
      " ",
      " ",
      " ",
      " ",
      " ",
      " ",
      "=================     ===============     ===============   ========  ========",
      "\\\\ . . . . . . .\\\\   //. . . . . . .\\\\   //. . . . . . .\\\\  \\\\. . .\\\\// . . //",
      "||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\\/ . . .||",
      "|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||",
      "||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||",
      "|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\\ . . . . ||",
      "||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\\_ . .|. .||",
      "|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\\ `-_/| . ||",
      "||_-' ||  .|/    || ||    \\|.  || `-_|| ||_-' ||  .|/    || ||   | \\  / |-_.||",
      "||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \\  / |  `||",
      "||    `'         || ||         `'    || ||    `'         || ||   | \\  / |   ||",
      "||            .===' `===.         .==='.`===.         .===' /==. |  \\/  |   ||",
      "||         .=='   \\_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \\/  |   ||",
      "||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \\/  |   ||",
      "||   .=='    _-'          `-__\\._-'         `-_./__-'         `' |. /|  |   ||",
      "||.=='    _-'                                                     `' |  /==.||",
      "=='    _-'                                                            \\/   `==",
      "\\   _-'                                                                `-_   /",
      " `''                                                                      ``' ",
    },
    -- TODO
    center = {
      {icon = "  ", desc = 'Recently lastest session    ', keymap = "Leader s l", action = ""},
      {icon = "  ", desc = "Recently opened files       ", keymap = "Leader f h", action = "Telescope oldfiles"},
      {icon = "  ", desc = "Find File                   ", keymap = "leader f f", action = "Telescope find_files"},
      {icon = "  ", desc = "File Browser                ", keymap = "leader f b", action = "Telescope file_browser"},
      {icon = "  ", desc = "Find Word                   ", keymap = "leader f w", action = "Telescope live_grep"},
      {icon = "  ", desc = "Open Personal dotfiles      ", keymap = "leader e e", action = "edit $MYVIMRC"}
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
  ensure_installed = { "c", "cpp", "lua", "vim", "python", "html", "css", "javascript", "markdown" },
  sync_install = false,
  auto_install = true,
  ignore_install = {"diff"},

  highlight = {
    enable = true,
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

-- require("tabnine").setup({
--   disable_auto_comment=true,
--   accept_keymap="<Tab>",
--   dismiss_keymap = "<C-]>",
--   debounce_ms = 800,
--   suggestion_color = {gui = "#808080", cterm = 244},
--   exclude_filetypes = {"TelescopePrompt", "NvimTree"},
--   log_file_path = nil, -- absolute path to Tabnine log file
--   require('tabnine.status').status(),
-- })

-- copilot configs
local copilot = {}

copilot.lsp_start_client = function(cmd, handler_names)
  local handlers = {}
  local id
  for _, name in ipairs(handler_names) do
    handlers[name] = function(err, result)
      if result then
        local retval = vim.call('copilot#agent#LspHandle', id, {method = name, params = result})
        if retval ~= 0 then return retval end
      end
    end
  end
  id = vim.lsp.start_client({
    cmd = cmd,
    cmd_cwd = vim.fn.expand('~'),
    name = 'copilot',
    handlers = handlers,
    get_language_id = function(bufnr, filetype)
      return vim.call('copilot#doc#LanguageForFileType', filetype)
    end,
    on_init = function(client, initialize_result)
      vim.call('copilot#agent#LspInit', client.id, initialize_result)
    end,
    on_exit = function(code, signal, client_id)
      vim.call('copilot#agent#LspExit', client_id, code, signal)
    end
  })
  return id
end

copilot.lsp_request = function(client_id, method, params)
  local client = vim.lsp.get_client_by_id(client_id)
  if not client then return end
  vim.lsp.buf_attach_client(0, client_id)
  local bufnr
  for _, doc in ipairs({params.doc, params.textDocument}) do
    if doc and type(doc.uri) == 'number' then
      bufnr = doc.uri
      vim.lsp.buf_attach_client(bufnr, client_id)
      doc.uri = vim.uri_from_bufnr(bufnr)
      doc.version = vim.lsp.util.buf_versions[bufnr]
    end
  end
  local _, id
  _, id = client.request(method, params, function(err, result)
    vim.call('copilot#agent#LspResponse', client_id, {id = id, error = err, result = result})
  end, bufnr)
  return id
end

copilot.rpc_request = function(client_id, method, params)
  local client = vim.lsp.get_client_by_id(client_id)
  if not client then return end
  local _, id
  _, id = client.rpc.request(method, params, function(err, result)
    vim.call('copilot#agent#LspResponse', client_id, {id = id, error = err, result = result})
  end)
  return id
end

copilot.rpc_notify = function(client_id, method, params)
  local client = vim.lsp.get_client_by_id(client_id)
  if not client then return end
  return client.rpc.notify(method, params)
end

return copilot

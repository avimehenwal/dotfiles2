-- Treesitter
require'nvim-treesitter.configs'.setup {
   ensure_installed = { "javascript", "typescript", "lua", "markdown", "bash", "json", "vue" },
   sync_install = true,
   auto_install = true,
   highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
   },
   incremental_selection = {
      enable = true,
      keymaps = {
         init_selection = "gnn",
         node_incremental = "grn",
         scope_incremental = "grc",
         node_decremental = "grm",
      },
   },
   indent = {
      enable = true
   },
   playground = {
      enable = true,
      disable = {},
      updatetime = 25,
      persist_queries = false,
      keybindings = {
         toggle_query_editor = 'o',
         toggle_hl_groups = 'i',
         toggle_injected_languages = 't',
         toggle_anonymous_nodes = 'a',
         toggle_language_display = 'I',
         focus_language = 'f',
         unfocus_language = 'F',
         update = 'R',
         goto_node = '<cr>',
         show_help = '?',
      },
   },
   autotag = {
      enable = true,
   },
   matchup = {
      enable = true,
   },
   rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
      colors = {"#004eff","#368dff","#ff1767","#00c5ff"},
   },
   refactor = {
      highlight_definitions = {
         enable = true,
         clear_on_cursor_move = true,
      },
      highlight_current_scope = { enable = true },
      smart_rename = {
         enable = true,
         keymaps = {
            smart_rename = "grr",
         },
      },
      navigation = {
         enable = true,
         keymaps = {
            goto_definition = "gnd",
            list_definitions = "gnD",
            list_definitions_toc = "gO",
            goto_next_usage = "<a-*>",
            goto_previous_usage = "<a-#>",
         },
      },
   },
}

-- https://github.com/weilbith/vim-blueplanet/blob/23f8677fb36403c709d5451ff11bf33cc8d5d9be/pack/plugins/opt/treesitter-textobjects/plugin/mappings.vim
require'nvim-treesitter.configs'.setup {
   textobjects = {
      select = {
         enable = true,
         lookahead = true,
         keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["aC"] = "@class.outer",
            ["iC"] = "@class.inner",
            ["ac"] = "@conditional.outer",
            ["ic"] = "@conditional.inner",
            ["al"] = "@loop.outer",
            ["il"] = "@loop.inner",
            ["ab"] = "@block.outer",
            ["ib"] = "@block.inner",
            ["is"] = "@statement.inner",
            ["as"] = "@statement.outer",
            ["ad"] = "@comment.outer",
            ["am"] = "@call.outer",
            ["im"] = "@call.inner",
            ["ae"] = "@block.outer",
["ie"] = "@block.inner",
         },
      },
   },
}

-- Swap Objects
require'nvim-treesitter.configs'.setup {
   textobjects = {
      swap = {
         enable = true,
         swap_next = {
            ["<leader>a"] = "@parameter.inner",
         },
         swap_previous = {
            ["<leader>A"] = "@parameter.inner",
         },
      },
   },
}

-- Move Objects
require'nvim-treesitter.configs'.setup {
   textobjects = {
      move = {
         enable = true,
         set_jumps = true,
         goto_next_start = {
            ["]m"] = "@function.outer",
            ["]]"] = "@class.outer",
         },
         goto_next_end = {
            ["]M"] = "@function.outer",
            ["]["] = "@class.outer",
         },
         goto_previous_start = {
            ["[m"] = "@function.outer",
            ["[["] = "@class.outer",
         },
         goto_previous_end = {
            ["[M"] = "@function.outer",
            ["[]"] = "@class.outer",
         },
      },
   },
}

-- Matchup
require'nvim-treesitter.configs'.setup {
   matchup = {
      enable = true,
   },
}


local fb_actions = require "telescope".extensions.file_browser.actions

require('telescope').setup{
    defaults = {
        prompt_prefix = "$ ",
	mappings = {
		i = {
			-- switch projects / directories / worspaces as new entries in this table
			["<c-a>"] = function() print("hello") end
		}
	}
    },

    extensions = {
	    file_browser = {
	      theme = "ivy",
	      -- disables netrw and use telescope-file-browser in its place
	      hijack_netrw = true,
	      mappings = {
		["i"] = {
		  -- in normal mode interferes with ENter and movement keys and hinders normal operation
		  ["<C-n>"] = fb_actions.create,
		  ["<C-r>"] = fb_actions.rename,
		  ["<C-m>"] = fb_actions.move,
		  ["<C-y>"] = fb_actions.copy,
		  ["<C-d>"] = fb_actions.remove,
		},
		["n"] = {
			-- your custom normal mode mappings
		},
	      },
	    },
  },
}

require("telescope").load_extension "file_browser"
print("Telescope lua config")

-- -- command mode abbreviations
-- vim.cmd('cabbrev ls Telescope buffers<cr>')
vim.cmd('cabbrev E Telescope file_browser<cr>')

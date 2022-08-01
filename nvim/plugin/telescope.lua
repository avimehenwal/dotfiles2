require('telescope').setup{
    defaults = {
        prompt_prefix = "$ ",
	mappings = {
		i = {
			-- switch projects / directories / worspaces as new entries in this table
			["<C-a>"] = function() print("hello") end
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
		  -- your custom insert mode mappings
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

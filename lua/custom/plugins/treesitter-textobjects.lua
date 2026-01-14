return {
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      -- Extend treesitter config with textobjects
      local configs = require 'nvim-treesitter.configs'
      configs.setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              [']f'] = '@function.outer',
              [']c'] = '@class.outer',
            },
            goto_next_end = {
              [']F'] = '@function.outer',
              [']C'] = '@class.outer',
            },
            goto_previous_start = {
              ['[f'] = '@function.outer',
              ['[c'] = '@class.outer',
            },
            goto_previous_end = {
              ['[F'] = '@function.outer',
              ['[C'] = '@class.outer',
            },
          },
        },
      }
    end,
  },
}

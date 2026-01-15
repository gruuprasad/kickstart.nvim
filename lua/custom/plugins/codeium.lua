-- Codeium - AI-powered tab completion (like Cursor)
-- Provides inline AI completions as you type
return {
  {
    'Exafunction/codeium.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp', -- Codeium.nvim requires nvim-cmp module (even if using blink.cmp)
    },
    event = 'BufEnter',
    config = function()
      local project_root = '/home/gp/dreamLand/jodulabs/kalakar-kit-app'
      
      -- Enable Codeium globally
      vim.g.codeium_enabled = true
      
      local codeium = require('codeium')
      codeium.setup {
        -- Configure Codeium to work alongside blink.cmp
        -- Disable nvim-cmp source since we're using blink.cmp
        enable_cmp_source = false,
        -- Enable virtual text for inline suggestions (like GitHub Copilot)
        virtual_text = {
          enabled = true,
          filetypes = {
            python = true,
            lua = true,
            javascript = true,
            typescript = true,
            rust = true,
            cpp = true,
            c = true,
          },
          default_filetype_enabled = true,
          idle_delay = 75, -- Wait 75ms after typing stops before showing suggestions
          map_keys = false, -- Disable automatic keybindings, we'll set our own
          accept_fallback = '\t', -- Fallback to Tab (for snippets) if no Codeium suggestion
        },
      }
      
      -- Custom keybindings for Codeium virtual text using Lua API
      local virtual_text = require('codeium.virtual_text')
      
      -- Accept Codeium suggestion with Tab (needs expr = true because it returns text to insert)
      -- Falls back to normal Tab if no suggestion exists
      vim.keymap.set('i', '<Tab>', function()
        if virtual_text then
          -- Check if there's a current completion item
          local current = virtual_text.get_current_completion_item and virtual_text.get_current_completion_item()
          if current then
            -- Accept the Codeium suggestion
            return virtual_text.accept()
          end
        end
        -- Fall back to normal Tab behavior
        return '\t'
      end, { silent = true, expr = true, desc = 'Codeium: Accept or Tab' })
      
      -- Clear Codeium suggestion
      vim.keymap.set('i', '<C-x>', function()
        if virtual_text and virtual_text.clear then
          virtual_text.clear()
        end
      end, { silent = true, desc = 'Codeium: Clear' })
      
      -- Cycle to next suggestion
      vim.keymap.set('i', '<M-]>', function()
        if virtual_text and virtual_text.cycle_completions then
          virtual_text.cycle_completions(1)
        end
      end, { silent = true, desc = 'Codeium: Next' })
      
      -- Cycle to previous suggestion
      vim.keymap.set('i', '<M-[>', function()
        if virtual_text and virtual_text.cycle_completions then
          virtual_text.cycle_completions(-1)
        end
      end, { silent = true, desc = 'Codeium: Previous' })

      -- Ensure Codeium is enabled for kalakar-kit-app project
      vim.api.nvim_create_autocmd({ 'BufEnter', 'DirChanged' }, {
        group = vim.api.nvim_create_augroup('CodeiumKalakar', { clear = true }),
        callback = function()
          local cwd = vim.fn.getcwd()
          if cwd:match('^' .. vim.fn.escape(project_root, '%')) then
            vim.b.codeium_enabled = true
          end
        end,
      })
      
      -- Notify user if Codeium needs authentication
      vim.api.nvim_create_autocmd('User', {
        pattern = 'CodeiumAuthRequired',
        callback = function()
          vim.notify('Codeium: Authentication required. Run :CodeiumAuth', vim.log.levels.WARN)
        end,
      })
    end,
  },
}



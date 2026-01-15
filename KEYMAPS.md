# Neovim Keymap Reference

Your leader key is `<Space>` (spacebar)

## 📁 File Navigation

### Oil.nvim (File Explorer)
- `-` - Open parent directory in current window
- `<Space>-` - Open parent directory in floating window

### Telescope (Fuzzy Finder)
- `<leader>sf` - Search Files in project
- `<leader>ss` - Search Select (Telescope picker menu)
- `<leader>sr` - Resume last Telescope search
- `<leader>s.` - Search Recent Files
- `<leader><leader>` - Find existing buffers
- `<leader>sn` - Search Neovim config files
- `<leader>/` - Fuzzy search in current buffer
- `<leader>s/` - Live grep in open files

### Harpoon (Quick File Navigation)
- `<leader>ha` - Add/show harpoon marks menu
- `<leader>hm` - Mark current file
- `<leader>h1` - Jump to harpoon file 1
- `<leader>h2` - Jump to harpoon file 2
- `<leader>h3` - Jump to harpoon file 3
- `<leader>h4` - Jump to harpoon file 4

## 🔍 Search & Find

### Telescope Search
- `<leader>sh` - Search Help tags
- `<leader>sk` - Search Keymaps
- `<leader>sw` - Search current Word
- `<leader>sg` - Search by Grep (project-wide)
- `<leader>sc` - Search in Current directory
- `<leader>sd` - Search Diagnostics

### Basic Search
- `<Esc>` - Clear search highlights

## 🪟 Window Management

- `<C-h>` - Move focus to left window
- `<C-l>` - Move focus to right window
- `<C-j>` - Move focus to lower window
- `<C-k>` - Move focus to upper window

## 🔧 LSP (Language Server Protocol)

### Navigation
- `grd` - Go to Definition
- `grD` - Go to Declaration
- `gri` - Go to Implementation
- `grr` - Go to References
- `grt` - Go to Type Definition
- `grc` - Go to Call hierarchy (incoming)
- `grC` - Go to Call hierarchy (outgoing)
- `gO` - Open Document Symbols
- `gW` - Open Workspace Symbols
- `<C-t>` - Jump back (from definition)

### Actions
- `grn` - Rename symbol
- `gra` - Code Action (normal/visual mode)
- `<leader>th` - Toggle Inlay Hints (if supported)

## 📝 Git (Gitsigns)

### Navigation
- `]c` - Jump to next git change
- `[c` - Jump to previous git change

### Staging (Normal Mode)
- `<leader>hs` - Stage hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk

### Staging (Visual Mode)
- `<leader>hs` - Stage selected lines
- `<leader>hr` - Reset selected lines

### Other Git Actions
- `<leader>hr` - Reset hunk (normal mode)
- `<leader>hR` - Reset buffer
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>hd` - Diff against index
- `<leader>hD` - Diff against last commit
- `<leader>tb` - Toggle git blame line
- `<leader>tD` - Toggle git show deleted

## 🎯 Code Navigation

### Aerial (Code Outline)
- `<leader>ai` - Toggle Aerial code outline
- `{` - Previous code symbol
- `}` - Next code symbol

## 🤖 AI Assistants

### nvim-aider (Aider Integration)
- `<leader>a/` - Toggle Aider terminal window
- `<leader>as` - Send text to Aider (prompt if empty, works in normal/visual mode)
- `<leader>ac` - Show Aider slash commands
- `<leader>ab` - Send current buffer to Aider
- `<leader>a+` - Add file to Aider session
- `<leader>a-` - Drop file from Aider session
- `<leader>ar` - Add file as read-only reference
- `<leader>aR` - Reset Aider session (drop all files and clear chat)

### Codeium (AI Autocompletion - Virtual Text)
- `<Tab>` - Accept Codeium suggestion, or insert Tab if no suggestion (insert mode)
- `<M-]>` (Alt+]) - Cycle to next Codeium completion (insert mode)
- `<M-[>` (Alt+[) - Cycle to previous Codeium completion (insert mode)
- `<C-x>` - Clear Codeium suggestion (insert mode)
- Note: Codeium shows inline suggestions automatically as you type (like GitHub Copilot)

### LuaSnip (Snippets)
- `<C-j>` - Expand snippet or jump to next snippet node (insert/select mode)
- `<C-k>` - Jump to previous snippet node (insert/select mode)
- `<C-l>` - Change choice in snippet (insert mode)

### Cursor Agent (AI)
- `<leader>ca` - Toggle Cursor Agent terminal (normal mode)
- `<leader>ca` - Send selection to Cursor Agent (visual mode)
- `<leader>cA` - Send entire buffer to Cursor Agent

## 🛠️ Utilities

### Formatting
- `<leader>f` - Format buffer

### Diagnostics
- `<leader>q` - Open diagnostic Quickfix list
- `<leader>td` - Toggle Diagnostics

### Terminal
- `<C-\>` - Toggle terminal (toggleterm)
- `<Esc><Esc>` - Exit terminal mode

## 💡 Tips

1. **Which-Key**: Press `<leader>` and wait a moment to see all available keymaps
2. **Telescope Help**: Press `?` in Telescope to see all available actions
3. **LSP Features**: Most LSP keymaps only work when a language server is attached
4. **Visual Mode**: Many commands work in visual mode - select text first, then use the keymap

## 🔄 Quick Reference by Category

### Most Used
- `<leader>sf` - Find files
- `<leader>sg` - Grep in project
- `grd` - Go to definition
- `<leader>f` - Format code
- `<leader>ca` - Cursor Agent

### File Management
- `-` - File explorer
- `<leader>sf` - Find files
- `<leader><leader>` - Switch buffers

### Code Navigation
- `grd` - Go to definition
- `grr` - Find references
- `<leader>ai` - Code outline
- `{` / `}` - Navigate symbols

### Git
- `]c` / `[c` - Navigate changes
- `<leader>hs` - Stage hunk
- `<leader>hp` - Preview hunk



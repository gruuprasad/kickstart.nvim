-- Project-specific navigation configuration for kalakar-kit-app
-- This module provides project-aware navigation helpers

local M = {}

-- Get project root (detects git root or falls back to current directory)
function M.get_project_root()
  local handle = io.popen('git rev-parse --show-toplevel 2>/dev/null')
  if handle then
    local result = handle:read '*a'
    handle:close()
    if result and result ~= '' then
      return vim.trim(result)
    end
  end
  return vim.fn.getcwd()
end

-- Common directories in kalakar-kit-app project
M.common_dirs = {
  src = 'src',
  services = 'services',
  tests = 'tests',
  frontend = 'services/frontend',
  backend = 'services/backend',
}

return M


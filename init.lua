-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
require("vim-config")
require("lazy").setup("plugins")
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#04a5e5', bold=true})
    vim.api.nvim_set_hl(0, 'LineNr', { fg='#04a5e5', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#dd7878', bold=false })
end
LineNumberColors()

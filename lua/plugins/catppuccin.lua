return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin", 
  piority = 1000,
  config = function() 
    vim.cmd.colorscheme "catppuccin"
  end
}

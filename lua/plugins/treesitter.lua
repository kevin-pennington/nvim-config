return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "java",
        "cpp",
        "python",
        "javascript",
        "dockerfile",
        "latex",
        "cmake",
        "make",
        "c",
        "markdown",
        "json",
        "fortran",
        "tmux",
        "yaml"
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

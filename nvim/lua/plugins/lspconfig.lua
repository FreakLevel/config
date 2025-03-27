return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    -- coq.nvim
    { "ms-jpq/coq_nvim", branch = "coq" },
    -- coq.nvim snippets
    { "ms-jpq/coq.artifacts", branch = "artifacts" },
    -- coq.nvim trhid party sources
    -- See https://github.com/ms-jpq/coq.thirdparty
    { 'ms-jpq/coq.thirdparty', branch = "3p" }
  },
  init = function ()
    vim.g.coq_settings = {
      auto_start = "shut-up"
    }
  end,
  config = function()
    require("config.lspconfig")
  end
}

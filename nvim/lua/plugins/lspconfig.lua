---@type NvPluginSpec
return {
  "neovim/nvim-lspconfig",
  config = function()
    -- load defaults i.e lua_lsp
    require("nvchad.configs.lspconfig").defaults()

    local lspconfig = require "lspconfig"

    local servers = {
      "html",
      "cssls",
      "bashls",
      "clangd",
      "docker_compose_language_service",
      "dockerls",
      "gopls",
      "jsonls",
      "rust_analyzer",
      "ts_ls",
      "sqls",
    }

    local nvlsp = require "nvchad.configs.lspconfig"

    -- lsps with default config
    for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
      }
    end
  end,
}

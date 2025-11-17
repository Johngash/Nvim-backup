return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Example: TypeScript/JavaScript
      local ok, _ = pcall(function()
        lspconfig.ts_ls.setup({
          capabilities = capabilities,
        })
      end)

      if not ok then
        -- Fallback for older naming (pre-Neovim 0.10)
        lspconfig.tsserver.setup({
          capabilities = capabilities,
        })
      end

      -- Add more language servers if you want:
      -- lspconfig.pyright.setup({ capabilities = capabilities })
      -- lspconfig.lua_ls.setup({ capabilities = capabilities })
    end,
  },
}

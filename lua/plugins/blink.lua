return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab", -- Tab to confirm / jump snippets
      },
      appearance = {
        use_nvim_cmp_as_default = true, -- mimic nvim-cmp look
      },
      completion = {
        documentation = { auto_show = true },
        menu = {
          border = "rounded",
        },
      },
      sources = {
        default = { "lsp", "path", "buffer", "snippets" },
      },
      snippets = {
        preset = "luasnip",
      },
    },
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}

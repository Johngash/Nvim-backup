return {
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets", -- Includes Java snippets
    },
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Custom Java snippets
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node

      ls.add_snippets("java", {
        s("int", t("int ")),
        s("boolean", t("boolean ")),
        s("String", t("String ")),
        s("public", t("public ")),
        s("private", t("private ")),
      })
    end,
  },
}

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a code action
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.code_actions.refactoring,

      -- Set a completion
      null_ls.builtins.completion.vsnip,

      -- Set a diagnostics
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.diagnostics.tsc,

      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettierd,
    }
    return config -- return final config table
  end,
}

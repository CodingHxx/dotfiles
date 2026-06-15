return {
  -- 1. Automate LSP and Debugger installation via Mason
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      -- TypeScript / JavaScript / React Native
      table.insert(opts.ensure_installed, "vtsls") -- Modern & fast TypeScript LSP
      -- Tailwind CSS
      table.insert(opts.ensure_installed, "tailwindcss")
      -- Android Gradle (Groovy / Kotlin)
      table.insert(opts.ensure_installed, "kotlin_language_server")
    end,
  },

  -- 2. Automate Syntax Highlighting via Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        -- Syntax parsers for React Native & Gradle
        vim.list_extend(opts.ensure_installed, {
          "typescript",
          "tsx",
          "javascript",
          "kotlin",
          "groovy", -- Used for standard build.gradle files
          "bash"
        })
      end
    end,
  },
}

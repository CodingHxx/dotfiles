return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tailwindcss = {
        settings = {
          tailwindCSS = {
            experimental = {
              -- This tells Tailwind to trigger autocomplete inside twrnc functions like tw`...` or tw(...)
              classRegex = {
                { "tw\\(([^)]*)\\)", "'([^']*)'" },
                { "tw\\(([^)]*)\\)", "\"([^\"]*)\"" },
                { "tw`([^`]*)`","([^.*]*)" },
              },
            },
          },
        },
      },
    },
  },
}

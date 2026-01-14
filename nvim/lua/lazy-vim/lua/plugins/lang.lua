return {
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.formatting.prettier" },
  { import = "lazyvim.plugins.extras.linting.eslint" },

  -- { import = "lazyvim.plugins.extras.lang.java" },
  { import = "lazyvim.plugins.extras.dap.core" },

  {
    "nvim-java/nvim-java",
    config = function()
      require("java").setup()
      -- vim.lsp.enable("jdtls")
    end,
  },

  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        -- Node.js
        "vtsls",
        "prettier",
        "eslint-lsp",
        "js-debug-adapter",
        -- Java
        -- "jdtls",
        "google-java-format",
        "checkstyle",
        "lemminx",
        "xmlformatter",
      })
    end,
  },

  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- java = { "checkstyle" },
        java = {},
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        java = { "google-java-format" },
        xml = { "xmlformatter" },
      },
    },
  },

  { import = "lazyvim.plugins.extras.lang.json" },
  { import = "lazyvim.plugins.extras.lang.python" },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lemminx = {
          filetypes = { "xml", "xsd", "xsl", "xslt", "svg" },
          settings = {
            xml = {
              server = {
                workDir = "~/.cache/lemminx",
              },
              logs = {
                client = true,
              },
              format = {
                enabled = true,
                splitAttributes = false,
                joinCDATALines = false,
                joinCommentLines = false,
                spaceBeforeEmptyCloseTag = true,
              },
            },
          },
        },
        vtsls = {},
        jdtls = {},
        pyright = {
          settings = {
            python = {
              analysis = {
                indexing = true,
                useLibraryCodeForTypes = true,
                autoImportCompletions = true,
                diagnosticMode = "workspace",
                autoSearchPaths = true,
              },
            },
          },
        },
      },
    },
  },
}

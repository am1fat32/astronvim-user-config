return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      }
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bash",
        "css",
        "go",
        "html",
        "javascript",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "scss",
        "typescript",
        "vim",
        "vimdoc",
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
    config = function()
      vim.keymap.set(
        "n",
        "[c",
        function() require("treesitter-context").go_to_context(vim.v.count1) end,
        { desc = "Context start", silent = true }
      )

      require("treesitter-context").setup {
        enable = true,
        max_lines = 0,
        min_window_height = 0,
        line_numbers = true,
        multiline_threshold = 20,
        trim_scope = "outer",
        zindex = 20,
      }
    end,
  },
}

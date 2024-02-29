return {
  "nvim-pack/nvim-spectre",
  opts = {
    open_cmd = "noswapfile vnew",
  },
  keys = {
    {
      "<leader>fS",
      mode = { "n" },
      function() require("spectre").toggle() end,
      desc = "Toggle Spectre",
    },
    {
      "<leader>fs",
      mode = { "n" },
      desc = "Spectre*",
    },
    {
      "<leader>fsw",
      mode = { "n" },
      function() require("spectre").open_visual { select_word = true } end,
      desc = "Search current word",
    },
    {
      "<leader>fsw",
      mode = { "n" },
      function() require("spectre").open_visual { select_word = true } end,
      desc = "Search current word",
    },
    {
      "<leader>fsp",
      mode = { "n" },
      function() require("spectre").open_file_search { select_word = true } end,
      desc = "Search on current file",
    },
  },
}

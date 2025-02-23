return {
  {
    "danymat/neogen",
    config = true,
    opts = function()
      require("neogen").setup({
        enabled = true,
        input_after_comment = true,
        languages = {
          python = {
            template = {
              annotation_convention = "numpydoc",
            },
          },
        },
      })
    end,
    init = function()
      vim.keymap.set(
        "n",
        "<leader>Gdf",
        ":lua require('neogen').generate({ type = 'func', })",
        { desc = "Generate Function Docstring" }
      )
      vim.keymap.set(
        "n",
        "<leader>Gdc",
        ":lua require('neogen').generate({ type = 'class', })",
        { desc = "Generate Class Docstring" }
      )
      vim.keymap.set(
        "n",
        "<leader>Gdt",
        ":lua require('neogen').generate({ type = 'type', })",
        { desc = "Generate Type Docstring" }
      )
      vim.keymap.set(
        "n",
        "<leader>GdF",
        ":lua require('neogen').generate({ type = 'file', })",
        { desc = "Generate File Docstring" }
      )
    end,
    ft = { "python" },
  },
}

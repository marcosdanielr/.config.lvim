lvim.plugins = {
  { "styled-components/vim-styled-components" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "jparise/vim-graphql" }
}

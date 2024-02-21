lvim.plugins = {
  { "styled-components/vim-styled-components" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "jparise/vim-graphql" },
  { "ellisonleao/gruvbox.nvim" },
  { "marcosdanielr/search-and-replace.nvim" },
  { "navarasu/onedark.nvim" },
  { "roobert/tailwindcss-colorizer-cmp.nvim" }
}


require("search-and-replace").setup()

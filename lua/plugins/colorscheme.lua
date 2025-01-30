-- if true then
--   return {}
-- end
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
-- return {
--   -- add nvim-base64
--   { "RRethy/nvim-base16" },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     -- opts = {
--     --   colorscheme = "base16-gruvbox-dark-soft",
--     --   -- colorscheme = "base16-tender",
--     -- },
--   },
-- }

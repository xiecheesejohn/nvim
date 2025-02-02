-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- when host is windows,set terminal is powershell
-- 根据操作系统设置默认终端
if vim.fn.has("win32") == 1 then
  -- Windows 系统
  vim.o.shell = "pwsh" -- 或者 "powershell"
  vim.opt.shellcmdflag = "-nologo -noprofile -ExecutionPolicy RemoteSigned -command"
  vim.opt.shellxquote = ""
else
  -- Linux 或其他类 Unix 系统
  vim.o.shell = "bash"
end
-- 设置相对行号
vim.o.relativenumber = true

-- 设置上方状态栏
-- vim.o.winbar = "%= %#ErrorMsg#%m%* %r %F %l/%L %c"

-- 设置neovide

-- 记住之前的窗口大小
vim.g.neovide_remember_window_size = true

-- 全屏
vim.g.neovide_fullscreen = true

-- 覆盖默认诊断配置
-- vim.diagnostic.config({
--   -- 启用浮动窗口自动换行
--   float = {
--     wrap = true, -- 允许文本换行
--     max_width = 80, -- 浮动窗口最大宽度（超过则换行）
--     format = function(diagnostic)
--       return string.format(
--         "%s (%s: %s)",
--         diagnostic.message,
--         diagnostic.source,
--         diagnostic.code or diagnostic.user_data.lsp.code
--       )
--     end,
--   },
--   -- 虚拟文本换行（可选）
--   virtual_text = {
--     wrap = true, -- 虚拟文本换行显示
--     spacing = 4, -- 文本与代码间距
--   },
-- })

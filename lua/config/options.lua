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

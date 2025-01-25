-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 定义一个global函数来根据文件类型执行不同的命令
function _G.run_file()
  local filetype = vim.bo.filetype -- 获取当前文件的类型
  local filename = vim.fn.expand("%") -- 获取当前文件的路径

  if filetype == "python" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!python " .. filename) -- 执行 Python 文件
  elseif filetype == "javascript" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!node " .. filename) -- 执行 JavaScript 文件
  elseif filetype == "sh" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!bash " .. filename) -- 执行 Bash 脚本
  elseif filetype == "lua" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!lua " .. filename) -- 执行 Lua 文件
  elseif filetype == "go" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!go run " .. filename) -- 执行 Go 文件
  elseif filetype == "rust" then
    vim.cmd("w") -- 保存文件
    vim.cmd("!cargo run" .. filename) -- 使用 Cargo 运行 Rust 项目
  else
    print("Unsupported filetype: " .. filetype) -- 不支持的文件类型
  end
end

local map = LazyVim.safe_keymap_set
map("n", "<leader>r", ":lua _G.run_file()<CR>", { desc = "simple run code", noremap = true, silent = true })
map("n", "<C-S-Up>", "<cmd>resize +4<cr>", { desc = "Increase Window Height" })
map("n", "<C-S-Down>", "<cmd>resize -4<cr>", { desc = "Decrease Window Height" })
map("n", "<C-S-Left>", "<cmd>vertical resize +4<cr>", { desc = "Decrease Window Width" })
map("n", "<C-S-Right>", "<cmd>vertical resize -4<cr>", { desc = "Increase Window Width" })

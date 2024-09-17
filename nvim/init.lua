-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd("runtime! plugin/rplugin.vim")
vim.g.python3_host_prog = vim.fn.exepath("python")
vim.g.loaded_python3_provider = nil

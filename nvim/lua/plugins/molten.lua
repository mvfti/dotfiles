return {
  "benlubas/molten-nvim",
  version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
  build = ":UpdateRemotePlugins",
  init = function()
    -- this is an example, not a default. Please see the readme for more configuration options
    vim.g.molten_output_win_max_height = 30
    vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
    vim.keymap.set("n", "<leader>o", ":MoltenEvaluateOperator<CR>", { silent = true, desc = "run operator selection" })
    vim.keymap.set("n", "<leader>l", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
    vim.keymap.set("n", "<leader>r", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
    vim.keymap.set(
      "v",
      "<leader>v",
      ":<C-u>MoltenEvaluateVisual<CR>gv",
      { silent = true, desc = "evaluate visual selection" }
    )
    -- vim.keymap.set("n", "<leader>rd", ":MoltenDelete<CR>", { silent = true, desc = "molten delete cell" })
    vim.keymap.set("n", "<leader>h", ":MoltenHideOutput<CR>", { silent = true, desc = "hide output" })
    vim.keymap.set("n", "<leader>mo", ":noautocmd MoltenEnterOutput<CR>", { silent = true, desc = "show/enter output" })
    vim.keymap.set("n", "<leader>mx", ":MoltenInterrupt<CR>", { silent = true, desc = "Interrupt kernel" })
    vim.keymap.set("n", "<leader>mr", "MoltenRestart<CR>", { silent = true, desc = "Restart kernel" })
  end,

  --keys = {
  --  { "<leader>mi", "<cmd>MoltenInit<CR>", desc = "This command initializes a runtime for the current buffer." },
  --  { "<leader>o", "<cmd>MoltenEvaluateOperator<CR>", desc = "Evaluate the text given by some operator." },
  --  { "<leader>l", "<cmd>MoltenEvaluateLine<CR>", desc = "Evaluate the current line." },
  --  { "<leader>v", "<cmd>MoltenEvaluateVisual<CR>gv", desc = "Evaluate the selected text." },
  --  { "<leader>h", "<cmd>MoltenHideOutput<CR>", desc = "Hide Output." },
  --  { "<leader>s", "<cmd>:noautocmd MoltenEnterOutput<CR>", desc = "Show Output" },
  --  { "<leader>r", "<cmd>MoltenReevaluateCell<CR>", desc = "Reevalutes current cell." },
  --  { "<leader>mr", "<cmd>MoltenRestart!<CR>", desc = "Shuts down and restarts the current kernel." },
  --  {
  --    "<leader>mx",
  --    "<cmd>MoltenInterrupt<CR>",
  --    desc = "Interrupts the currently running cell and does nothing if not cell is running.",
  --  },
  --},
}

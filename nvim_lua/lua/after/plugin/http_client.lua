if not pcall(require, "http_client") then
  return
end

local http_client = require("http_client")

local config = {
  default_env_file = '.env.json',
  request_timeout = 30000, -- 30 seconds
  keybindings = {
    select_env_file = "<leader>hf",
    set_env = "<leader>he",
    run_request = "<leader>hr",
    stop_request = "<leader>hs",
    dry_run = "<leader>hd",
    toggle_verbose = "<leader>hv"
  },
}

http_client.setup(config)

-- Set up Telescope integration if available
if pcall(require, "telescope") then
  require("telescope").load_extension("http_client")

  -- Set up Telescope-specific keybindings
  vim.api.nvim_set_keymap('n', '<leader>hf', [[<cmd>Telescope http_client http_env_files<CR>]], { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>he', [[<cmd>Telescope http_client http_envs<CR>]], { noremap = true, silent = true })
end

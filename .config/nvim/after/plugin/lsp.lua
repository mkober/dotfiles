local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = true,
  virtual_text = false
})


lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
  'tailwindcss',
  'pyright'
})

-- (Optional) Configure lua language server for neovim
--lsp.nvim_workspace()

lsp.setup()

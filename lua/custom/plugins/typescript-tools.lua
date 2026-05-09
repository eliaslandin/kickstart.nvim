vim.pack.add { 'https://github.com/pmizio/typescript-tools.nvim' }

require('typescript-tools').setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
  settings = {
    jsx_close_tag = {
      enable = true,
      filetypes = { 'javascriptreact', 'typescriptreact' },
    },
  },
}

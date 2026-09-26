-- [[ Configure Treesitter ]]
-- See `:help nvim-treesitter` (main branch API)
local languages = {
  'go', 'lua', 'python', 'regex',
  'bash', 'markdown', 'markdown_inline', 'kdl',
  'html', 'terraform', 'json', 'yaml', 'toml', 'dockerfile',
  'css',
}

-- Install parsers (no-op if already installed)
require('nvim-treesitter').install(languages)

-- Enable highlighting and indentation for any filetype with a parser
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    if pcall(vim.treesitter.start, args.buf) then
      vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})

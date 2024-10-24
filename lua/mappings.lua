require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map({ "i" }, "jj", "<ESC>")
map({ "n" }, "<space>s", "<cmd> w <cr>")
map({ "n" }, "<space>ta", "<cmd> tabnew <cr>")
map({ "n" }, "<space>tn", "<cmd> tabNext <cr>")
map({ "n" }, "<space>tf", "<cmd> tabfirst <cr>")
map({ "n" }, "<space>tl", "<cmd> tablast <cr>")

local opts = { buffer = bufnr, noremap = true, silent = true }

map('n', 'gD', vim.lsp.buf.declaration, opts)
map('n', 'gd', vim.lsp.buf.definition, opts)
map('n', 'K', vim.lsp.buf.hover, opts)

--harpoon
vim.keymap.set("n", "ha", ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set("n", "hm", ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set("n", "hp", ':lua require("harpoon.ui").nav_prev()<CR>')
vim.keymap.set("n", "hn", ':lua require("harpoon.ui").nav_next()<CR>')

vim.keymap.set({ 'n', 'x', 'o' }, 'ff', '<Plug>(leap-forward)')
vim.keymap.set({ 'n', 'x', 'o' }, 'FF', '<Plug>(leap-backward)')
vim.keymap.set({ 'n', 'x', 'o' }, 'ffg', '<Plug>(leap-from-window)')
--   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
--   vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
--   vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
--   vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
--   vim.keymap.set('n', '<space>wl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
--   end, opts)
--   vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
--   vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
--   vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
--   vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
--   vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
--   vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
--   vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

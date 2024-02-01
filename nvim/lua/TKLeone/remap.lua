vim.keymap.set('n', '<leader>u', function ()
  vim.cmd.UndotreeToggle()
  vim.cmd.UndotreeFocus()
end)
vim.keymap.set("n", "<leader>aa", ":! java %:p<CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set({"v", "n"}, "da", "d")
vim.keymap.set({"v", "n"}, "d", [["_d]])
vim.keymap.set({"v", "n"}, "D", [["_D]])
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set("n","cc",':%s/\\<<C-r><C-w>\\>//g<left><left>')
vim.keymap.set({"n", "v"}, "<C-v>", "p", { desc = 'paste'})
vim.keymap.set("i", "<C-v>", "<C-r>*", { desc = 'paste'})
vim.keymap.set("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>", {desc  = "replace highlighted words"})

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- empty setup using defaults

vim.keymap.set('n', '<leader>ee', ":NvimTreeFindFileToggle<CR>")

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction'})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = '[G]oto [D]efinition'})
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences'})
vim.keymap.set("n", '<leader>ds', require('telescope.builtin').lsp_document_symbols, { desc = '[D]ocument [S]ymbols'})

vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, {desc = '[W]orkspace [L]ist Folders' })

vim.keymap.set("n", '<leader>rn', vim.lsp.buf.rename, { desc = '[R]e[n]ame'})
vim.keymap.set("n", '<leader>D', vim.lsp.buf.type_definition, { desc = 'Type [D]efinition'})
vim.keymap.set('n', '<C-s>', ':noh<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'Hover Documentation'})
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Signature Documentation'})

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })


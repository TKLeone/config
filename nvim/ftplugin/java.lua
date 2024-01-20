local config = {
    -- cmd = {vim.fn.expand('~/AppData/Local/nvim-data/mason/bin/jdtls.cmd')},
    cmd = {vim.fn.expand('~/jlsstorage/jdt-language-server-1.29.0-202310261436/bin/jdtls.bat')},
    root_dir = vim.fs.dirname(vim.fs.find({ '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

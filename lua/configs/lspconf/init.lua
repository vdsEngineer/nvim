local lspconfig = require('lspconfig')

lspconfig.gopls.setup(require("configs.lspconf.conf.gopls"))
lspconfig.phpactor.setup(require("configs.lspconf.conf.phpactor"))

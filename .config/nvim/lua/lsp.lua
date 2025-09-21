local lspconfig = require("lspconfig")

-- TypeScript
lspconfig.tsserver.setup({})

-- Python
lspconfig.pyright.setup({})

-- Bash (opcional)
lspconfig.bashls.setup({})

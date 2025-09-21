# DevConte

##

### Configuração do Neovim

dotfiles/
└── .config/
    └── nvim/
        ├── init.lua                # Arquivo principal de configuração
        ├── lua/                   # Configurações modulares em Lua
        │   ├── plugins.lua        # Gerenciador de plugins (ex: lazy.nvim, packer.nvim)
        │   ├── options.lua        # Opções do Neovim
        │   ├── mappings.lua       # Atalhos de teclado
        │   └── lsp.lua            # Configuração de LSP e autocompletar
        └── after/
            └── plugin/            # Plugins que precisam de ajustes pós-carregamento

✅ Comandos de verificação após abrir o Neovim
:Lazy → abre a interface do lazy.nvim (verifique se os plugins estão instalados)

:TSInstall javascript typescript python → instala syntax highlight se necessário

:checkhealth → diagnóstico geral do Neovim

📂 after/plugin/
Esse diretório você pode deixar vazio por enquanto. Ele será útil caso precise configurar plugins individualmente após o carregamento, por exemplo, para nvim-cmp, temas, etc.

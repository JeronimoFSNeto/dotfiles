#!/bin/bash

echo "🔧 Aplicando configurações do repositório dotfiles..."

# Diretório de destino (garante que funcione mesmo fora do DevContainer)
USER_HOME="${HOME:-/home/vscode}"

# Copia o .zshrc
if [ -f ".zshrc" ]; then
  cp .zshrc "$USER_HOME/.zshrc"
  echo "✅ .zshrc copiado"
fi

# Copia o .gitconfig
if [ -f ".gitconfig" ]; then
  cp .gitconfig "$USER_HOME/.gitconfig"
  echo "✅ .gitconfig copiado"
fi

# Aliases
if [ -f "aliases.zsh" ]; then
  mkdir -p "$USER_HOME/.config/zsh"
  cp aliases.zsh "$USER_HOME/.config/zsh/aliases.zsh"
  echo "✅ aliases.zsh copiado"
fi

# Nvim
mkdir -p "$USER_HOME/.config/nvim"
cp -r .config/nvim/* "$USER_HOME/.config/nvim/"

# Ajusta permissões (evita erro se não for no DevContainer)
chown -R vscode:vscode "$USER_HOME/.zshrc" "$USER_HOME/.gitconfig" 2>/dev/null || true

echo "✅ Dotfiles instalados com sucesso!"

echo "🎯 Deseja recarregar o shell com as novas configurações? (s/n)"
read -r RESPOSTA
if [ "$RESPOSTA" = "s" ]; then
  exec zsh
fi

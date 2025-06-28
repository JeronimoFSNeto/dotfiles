#!/bin/bash

echo "🔧 Aplicando configurações do repositório dotfiles..."

# Garante que arquivos estejam no diretório HOME
cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig

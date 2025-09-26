
# =========================================
# Navegação e Workspace
# =========================================
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."


# -------------------------------
# Aliases e funções úteis (DevOps)
# -------------------------------
alias gs="git status"
alias ga="git add  ."
alias gc="git commit -m"
alias gpush="git push"
alias gl="git log --oneline --graph --all"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gd="git diff"

# =========================================
# Aliases Docker
# =========================================
alias d="docker"
alias dps="docker ps"
alias dpsa="docker ps"
alias dbash="docker exec -it"
alias dkc="docker-compose"

alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcub="docker-compose up -d --build"
alias dcl="docker-compose logs -f"
alias dce="docker-compose exec"


alias nr="npm run"
alias py="python3"
alias venv="python3 -m venv venv && source venv/bin/activate"

#alias do meu workspace
alias ws="cd ~/Workspace"
alias pers="cd ~/Workspace/pessoal"
alias prof="cd ~/Workspace/profissional"
alias uni="cd ~/Workspace/universidade"
alias sand="cd ~/Workspace/sandbox"
alias dock="cd ~/Workspace/docker"
alias dock_mysql="cd ~/Workspace/docker/mysql"
alias dock_postgres="cd ~/Workspace/docker/postgres"
alias dock_redis="cd ~/Workspace/docker/redis"
alias dock_misc="cd ~/Workspace/docker/misc"

alias minha="cd ~/Workspace/profissional/ufdpar/minha-ufdpar/"
alias minhab="cd ~/Workspace/profissional/ufdpar/minha-ufdpar/backend/"
alias minham="cd ~/Workspace/profissional/ufdpar/minha-ufdpar/mobile/"
alias minhaf="cd ~/Workspace/profissional/ufdpar/minha-ufdpar/frontend/"

# Aliases extras
alias  rag="cd ~/Workspace/pessoal/projetos/laravel-rag-app"
alias pers_proj="cd ~/Workspace/pessoal/projetos"
alias minha="cd ~/Workspace/profissional/ufdpar/minha"
alias prof_pront="cd ~/Workspace/profissional/ufdpar/prontuario"
alias prof_chatb="cd ~/Workspace/profissional/ufdpar/chatbot"
alias sand_py="cd ~/Workspace/sandbox/python"
alias dock_mysql="cd ~/Workspace/docker/mysql"
alias dock_postgres="cd ~/Workspace/docker/postgres"

# =========================================
# Alias Diversos
# =========================================
alias c="clear"
alias bat="bat --style=auto"

# Atualização do sistema
alias update="sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y"

# Uso de disco
alias du="du -h"

# Reiniciar shell
alias reload="source ~/.zshrc"
alias zshconfig="nvim ~/.zshrc"

# =========================================
# Eza (ls melhorado)
# =========================================
# Substituir ls
alias ls="eza --icons --group-directories-first"

# Listagem longa
alias ll="eza -l --icons --group-directories-first"

# Listagem completa (inclui ocultos)
alias la="eza -la --icons --group-directories-first"

# Tree com 2 níveis
alias lt="eza --tree --level=2 --icons"

# Git status visual no ls
alias lg="eza -l --git --icons --group-directories-first"
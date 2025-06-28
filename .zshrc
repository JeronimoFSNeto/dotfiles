# ~/.zshrc

# Ativa o prompt moderno se quiser (ex: oh-my-posh, starship, etc.)
# eval "$(starship init zsh)"

# Aliases úteis
alias gs="git status"
alias gl="git log --oneline --graph --decorate"
alias ni="npm install"
alias dcup="docker compose up -d"
alias dcdn="docker compose down"
alias cls="clear"

# Habilita histórico compartilhado entre terminais
setopt inc_append_history share_history

# Node.js / Python via asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

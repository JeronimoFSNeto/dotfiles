# ~/.zshrc

# Ativa o prompt moderno se quiser (ex: oh-my-posh, starship, etc.)
# eval "$(starship init zsh)"


# Oh My Zsh ou Zsh padrão
export ZSH="$HOME/.oh-my-zsh"

# Tema do Oh My Zsh
ZSH_THEME="agnoster"  

# Ativa plugins do Oh My Zsh
plugins=(git docker npm zsh-autosuggestions zsh-syntax-highlighting)

# Habilita histórico compartilhado entre terminais
setopt inc_append_history share_history

# Node.js / Python via asdf
. "$HOME/.asdf/asdf.sh"
#. "$HOME/.asdf/completions/asdf.bash"

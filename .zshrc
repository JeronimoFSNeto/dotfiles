# -------------------------------
# Powerlevel10k instant prompt
# -------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -------------------------------
# Oh My Zsh
# -------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# -------------------------------
# PATH
# -------------------------------
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/go/bin:$HOME/go/bin:$PATH"
export ASDF_DATA_DIR="/home/jeronimo/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"
# -------------------------------
# asdf (Go version) + autocomplete
# -------------------------------
export ASDF_DATA_DIR="$HOME/.asdf"
. "$ASDF_DATA_DIR/asdf.sh"
#. "$ASDF_DATA_DIR/completions/asdf.bash"



# -------------------------------
# Histórico potente
# -------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt inc_append_history

# -------------------------------
# Plugins Oh My Zsh
# -------------------------------
plugins=(
  git
  z
  sudo
  colored-man-pages
  node
  npm
  docker
  docker-compose
  python
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# -------------------------------
# Powerlevel10k config
# -------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

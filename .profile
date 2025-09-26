# ~/.profile

# include .bashrc if it exists
if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Função para adicionar ao PATH sem duplicar
add_to_path() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1:$PATH" ;;
    esac
}

# user's private bin
add_to_path "$HOME/bin"
add_to_path "$HOME/.local/bin"

# Cargo (Rust) - só adicionar se não foi carregado pelo .bashrc
if [ -f "$HOME/.cargo/env" ] && [ -z "$BASH_VERSION" ]; then
    . "$HOME/.cargo/env"
fi

# Go - só adicionar se não for bash (que já carrega no .bashrc)
if [ -z "$BASH_VERSION" ]; then
    export GOPATH="$HOME/go"
    add_to_path "/usr/local/go/bin"
    add_to_path "$GOPATH/bin"
    
    # pnpm
    export PNPM_HOME="$HOME/.local/share/pnpm"
    add_to_path "$PNPM_HOME"
fi

export PATH
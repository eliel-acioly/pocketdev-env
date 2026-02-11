#!/usr/bin/env bash
set -e

# -----------------------------
# Caminho base absoluto
# -----------------------------
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# -----------------------------
# Core
# -----------------------------
source "$BASE_DIR/core/logger.sh"
source "$BASE_DIR/core/detect-env.sh"

log_info "🚀 Iniciando PocketDev Environment Setup"

detect_environment
log_info "🧠 Ambiente detectado: $POCKETDEV_ENV"

# -----------------------------
# Funções utilitárias
# -----------------------------
backup_and_remove() {
  local target="$1"

  if [ -f "$target" ] && [ ! -L "$target" ]; then
    log_warn "Backup de $(basename "$target") encontrado"
    mv "$target" "$target.backup"
  fi
}

# -----------------------------
# Instalações
# -----------------------------
log_info "📦 Instalando base do sistema"
source "$BASE_DIR/install/base.sh"

log_info "📦 Instalando Node.js e PNPM"
source "$BASE_DIR/install/node.sh"

log_info "📦 Instalando Zsh e Starship"
source "$BASE_DIR/install/zsh.sh"

# -----------------------------
# Preparação para Stow
# -----------------------------
log_info "🧹 Preparando ambiente para GNU Stow"

backup_and_remove "$HOME/.zshrc"
backup_and_remove "$HOME/.gitconfig"
backup_and_remove "$HOME/.tmux.conf"
backup_and_remove "$HOME/.config/starship.toml"

# -----------------------------
# Dotfiles (Stow)
# -----------------------------
log_info "🔗 Aplicando dotfiles com GNU Stow"

cd "$BASE_DIR"

stow zsh
stow git
stow tmux
stow starship
stow nvim

# -----------------------------
# Shell padrão
# -----------------------------
if command -v zsh >/dev/null; then
  log_info "🐚 Definindo Zsh como shell padrão"
  chsh -s "$(which zsh)" || true
fi

log_success "✅ PocketDev Environment pronto 🚀"
log_info "🔄 Reinicie o terminal para aplicar todas as configurações"
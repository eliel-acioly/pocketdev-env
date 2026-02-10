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

log_info "Iniciando PocketDev Environment Setup"

detect_environment
log_info "Ambiente detectado: $POCKETDEV_ENV"

# -----------------------------
# Instalações
# -----------------------------
log_info "Instalando base do sistema"
source "$BASE_DIR/install/base.sh"

log_info "Configurando Git"
source "$BASE_DIR/install/git.sh"

log_info "Instalando Node.js e PNPM"
source "$BASE_DIR/install/node.sh"

log_info "Configurando Zsh"
source "$BASE_DIR/install/zsh.sh"

# -----------------------------
# Dotfiles (Stow)
# -----------------------------
log_info "Aplicando dotfiles com GNU Stow"
cd "$BASE_DIR"
stow zsh starship tmux git nvim

# -----------------------------
# Shell padrão
# -----------------------------
if command -v zsh >/dev/null; then
  log_info "Definindo Zsh como shell padrão"
  chsh -s "$(which zsh)" || true
fi

log_success "PocketDev Environment pronto 🚀"
log_info "Reinicie o terminal para aplicar todas as configurações"
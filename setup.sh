#!/usr/bin/env bash
set -e

# Caminho base
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$BASE_DIR/core/logger.sh"
source "$BASE_DIR/core/detect-env.sh"

log_info "Iniciando PocketDev Environment Setup"

detect_environment

log_info "Ambiente detectado: $POCKETDEV_ENV"

log_info "Instalando base do sistema"
source "$BASE_DIR/install/base.sh"

log_info "Configurando Git"
source "$BASE_DIR/install/git.sh"

log_info "Instalando Node.js e PNPM"
source "$BASE_DIR/install/node.sh"

log_info "Configurando Zsh"
source "$BASE_DIR/install/zsh.sh"

log_success "Ambiente PocketDev pronto 🚀"
log_info "Reinicie o terminal para aplicar todas as configurações"

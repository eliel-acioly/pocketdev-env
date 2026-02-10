#!/usr/bin/env bash
set -e

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$BASE_DIR/core/logger.sh"
source "$BASE_DIR/core/detect-env.sh"

log_info "🚀 PocketDev — Instalando ferramentas essenciais"

detect_environment
log_info "🧠 Ambiente detectado: $POCKETDEV_ENV"

# ------------------------
# Instalações por módulo
# ------------------------
source "$BASE_DIR/install/base.sh"
source "$BASE_DIR/install/git.sh"
source "$BASE_DIR/install/node.sh"
source "$BASE_DIR/install/zsh.sh"

log_success "Ferramentas instaladas com sucesso"
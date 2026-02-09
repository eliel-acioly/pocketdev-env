#!/usr/bin/env bash

log_info() {
  echo -e "\033[1;34mℹ️  $1\033[0m"
}

log_success() {
  echo -e "\033[1;32m✅ $1\033[0m"
}

log_warn() {
  echo -e "\033[1;33m⚠️  $1\033[0m"
}

log_error() {
  echo -e "\033[1;31m❌ $1\033[0m"
}

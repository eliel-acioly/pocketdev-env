#!/usr/bin/env bash

detect_environment() {
  if [[ -n "$TERMUX_VERSION" ]]; then
    if [[ -d "/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/ubuntu" ]]; then
      export POCKETDEV_ENV="termux-ubuntu"
    else
      export POCKETDEV_ENV="termux"
    fi
  elif grep -qi microsoft /proc/version 2>/dev/null; then
    export POCKETDEV_ENV="wsl"
  else
    export POCKETDEV_ENV="linux"
  fi
}

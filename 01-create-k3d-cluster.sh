#!/usr/bin/env bash

ORIG_DIR="$(pwd)"
cd "$(dirname "$0")"
BIN_DIR="$(pwd)"

onExit() {
  cd "${ORIG_DIR}"
}
trap onExit EXIT

k3d cluster create rconway -p "31080:80@loadbalancer" -p "31443:443@loadbalancer"

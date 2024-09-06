#!/usr/bin/env bash

ORIG_DIR="$(pwd)"
cd "$(dirname "$0")"
BIN_DIR="$(pwd)"

onExit() {
  cd "${ORIG_DIR}"
}
trap onExit EXIT

kubectl create deployment nginx --image=nginx

kubectl expose deployment nginx --port=80

kubectl apply -f files/ingress-for-nginx.yaml

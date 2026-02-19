#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8000}"

echo "Iniciando servidor em 0.0.0.0:${PORT}..."
python3 server.py &
SERVER_PID=$!

cleanup() {
  kill "$SERVER_PID" 2>/dev/null || true
}
trap cleanup EXIT

sleep 1

echo "Abrindo túnel público HTTP em localhost.run..."
echo "Compartilhe a URL https://*.lhr.life mostrada abaixo:"
ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=30 -R 80:localhost:${PORT} nokey@localhost.run

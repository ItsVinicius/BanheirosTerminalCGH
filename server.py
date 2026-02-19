#!/usr/bin/env python3
from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler

HOST = "0.0.0.0"
PORT = 8000

if __name__ == "__main__":
    server = ThreadingHTTPServer((HOST, PORT), SimpleHTTPRequestHandler)
    print(f"Servidor HTTP disponível em http://{HOST}:{PORT}")
    server.serve_forever()

# Publicação HTTP rápida

Este repositório inclui um servidor HTTP simples e um script para criar um túnel público temporário.

## Requisitos

- Python 3
- SSH disponível no sistema

## Como publicar

```bash
./deploy_public.sh
```

Isso fará:
1. Subir um servidor HTTP em `0.0.0.0:8000`.
2. Criar um túnel em `localhost.run`.
3. Exibir uma URL pública `https://...` para compartilhar.

> Observação: a URL é temporária e fica ativa enquanto o comando estiver rodando.

## Rodar apenas localmente

```bash
python3 server.py
```

Acesse localmente em `http://localhost:8000`.

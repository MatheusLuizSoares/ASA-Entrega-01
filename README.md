# ASA - Entrega 01

Projeto Docker com três containers interligados: Web, DNS e SSH, organizados em uma rede interna `rede_asa`, sem expor portas críticas ao host, exceto o acesso HTTP na porta 8080.

## Estrutura do Projeto

```
ASA-Entrega-01/
├── docker-compose.yml
├── web/
│   ├── Dockerfile
│   └── index.html
├── dns/
│   ├── Dockerfile
│   ├── db.asa
│   ├── named.conf
│   └── named.conf.local
├── ssh/
│   ├── Dockerfile
│   └── ssh-start
└── HISTORICO.md
```

## Conteúdo do `docker-compose.yml`

```yaml
version: '3.8'

services:
  web:
    build: ./web
    ports:
      - "8080:80"
    networks:
      - rede_asa

  dns:
    build: ./dns
    networks:
      - rede_asa
    command: named -g

  ssh:
    build: ./ssh
    networks:
      - rede_asa
    command: bash /ssh-start

networks:
  rede_asa:
    driver: bridge
```

## Como Rodar

```bash
docker compose up --build
```

## Testar DNS

```bash
docker exec -it asa_ssh bash
ping asa.local
```
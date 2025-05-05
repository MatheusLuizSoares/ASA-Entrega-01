# ASA-Entrega-01

ste projeto tem como objetivo demonstrar os conceitos básicos de containers com Docker, criando uma rede com dois serviços essenciais: um servidor DNS (BIND9) e um servidor Web (NGINX), que se comunicam entre si.

📁 Estrutura do Projeto
atividade-asa-01/
├── dns/
│   ├── Dockerfile
│   ├── db.asa.br
│   └── named.conf.local
├── web/
│   ├── Dockerfile
│   └── index.html
├── service.sh
└── README.md
⚙️ Como Usar
Antes de tudo, certifique-se de estar com o Docker instalado e funcionando.

Crie uma rede personalizada:
docker network create --subnet=172.20.0.0/16 asa-net
Inicie o servidor DNS:
./service.sh dns start
Inicie o servidor Web:
./service.sh web start

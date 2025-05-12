# Histórico de Alterações - ASA Entrega 01

## 1. Inicialização do Projeto
- Criado diretório base com estrutura para web, dns e ssh.
- Criado `index.html` básico e Dockerfile para o container Web.

## 2. DNS
- Dockerfile com BIND9.
- Configurações mínimas (`named.conf`, `named.conf.local`, `db.asa`).
- Corrigido problema de conflito de porta 53 com systemd-resolved.

## 3. SSH
- Base Ubuntu com OpenSSH Server.
- Criado script `ssh-start` para inicialização correta.
- Ativado root com senha `root` para testes internos.

## 4. Rede
- Criada rede `rede_asa` isolada com driver bridge.
- Portas sensíveis (como 53) não mais expostas ao host.

## 5. Ajustes Finais
- Atualização do README.
- Geração automática do projeto zipado.
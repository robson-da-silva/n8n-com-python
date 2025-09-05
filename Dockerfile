FROM n8nio/n8n:1.109.0

# Instala python3 e pip como root
USER root
RUN apk add --no-cache --update python3 py3-pip

# Troca para o usuário node (padrão do n8n)
USER node

# Instala pipx no modo user e ignora o ambiente gerenciado (PEP 668)
RUN python3 -m pip install --user --break-system-packages pipx

# Adiciona o path do pipx ao PATH
ENV PATH="/home/node/.local/bin:$PATH"

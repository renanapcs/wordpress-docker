# Use a imagem oficial do WordPress
FROM wordpress:latest

# Atualize e instale pacotes adicionais, se necessário
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    nano \
    htop && \
    apt-get clean

# Copie o arquivo custom.ini
COPY custom.ini $PHP_INI_DIR/conf.d/


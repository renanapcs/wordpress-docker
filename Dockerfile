# Usando a imagem oficial do WordPress
FROM wordpress:latest

# Atualize e instale pacotes adicionais, nano editor de texto, htop monitora recursos do sistema
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    nano \ 
    htop && \
    apt-get clean

# Copie o arquivo custom.ini, configurações personalizadas do php.
COPY custom.ini $PHP_INI_DIR/conf.d/


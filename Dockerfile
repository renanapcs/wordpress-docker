# Use a imagem oficial do WordPress
FROM wordpress:latest
COPY php.ini $PHP_INI_DIR/conf.d/

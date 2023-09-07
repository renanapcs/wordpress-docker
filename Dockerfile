# Use uma imagem base com PHP personalizável
FROM php:7.4-fpm

# Instale as extensões PHP necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copie seu arquivo php.ini personalizado (se você tiver um) para o local apropriado
COPY php.ini /usr/local/etc/php/

# Configure o WordPress para usar essa imagem do PHP
ENV WORDPRESS_PHP_IMAGE php:7.4-fpm

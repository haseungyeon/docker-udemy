FROM php:8.0-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html

# dockerfile에 CMD 또는 ENTRYPOINT가 없다면 base image의 CMD, ENTRYPOINT가 실행됨.
# 여기서는 PHP 인터프리터를 호출함.
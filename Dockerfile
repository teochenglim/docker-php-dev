FROM php:fpm

# Custom PHP configuration
COPY php/php.ini /usr/local/etc/php/conf.d/

# Additional PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

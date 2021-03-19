FROM php:8.0-apache

# Get memcached dependancies
RUN apt-get update \
      && apt-get install -y libmemcached-dev zlib1g-dev unixodbc-dev

# Configuring cache solutions & MS Sql
RUN pecl install redis \
    && pecl install xdebug \
    && pecl install memcached \
    && pecl install sqlsrv pdo_sqlsrv \
    && docker-php-ext-enable redis xdebug memcached sqlsrv pdo_sqlsrv

# Copy the files over, superseded by volumes
COPY /app /app
COPY /data/php /data

# tweak docroot
ENV APACHE_DOCUMENT_ROOT /app/html
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# cleanup
RUN apt-get clean \
    && apt-get autoclean
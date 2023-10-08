FROM php:apache

WORKDIR /var/www/html
RUN a2enmod rewrite
# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libicu-dev \
    libmariadb-dev \
    zlib1g-dev \
    libpng-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libjpeg62-turbo-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN docker-php-ext-install gettext intl pdo_mysql gd

RUN docker-php-ext-install gd


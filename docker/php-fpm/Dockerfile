ARG PHP_VERSION=8.2

FROM phpdockerio/php:${PHP_VERSION}-fpm AS symfony
WORKDIR "/application"

RUN apt-get update; \
    apt-get -y --no-install-recommends install \
        php8.2-gd \ 
        php8.2-imap \
        php8.2-intl \ 
        php8.2-mysql; \
    apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - &&\
    apt-get install -y nodejs
ARG PHP_VERSION=8.2

FROM phpdockerio/php:${PHP_VERSION}-fpm AS symfony

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



RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sS https://get.symfony.com/cli/installer | bash
#RUN mv /.symfony/bin/symfony /usr/local/bin/symfony
#RUN git config --global user.email "you@example.com" \ 
#    && git config --global user.name "Your Name"

WORKDIR /var/www/html


RUN set -eux; \
    if [ -f composer.json ]; then \
        php -d memory_limit=-1 `which composer` install; \
		php -d memory_limit=-1 `which composer` clear-cache; \
    fi
RUN set -eux; \
	mkdir -p var/cache var/log; \
    if [ -f composer.json ]; then \
		composer dump-autoload; \
		composer dump-env dev; \
		composer run-script post-install-cmd; \
		chmod +x bin/console; sync; \
    fi



ENTRYPOINT ["/bin/bash", "/var/www/html/entrypoint.sh"]
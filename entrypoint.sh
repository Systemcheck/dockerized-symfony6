#!/bin/bash
set -e
export npm_config_loglevel=error

# To fix Linux DNS (Host to IP) resolving problems
# echo "151.101.12.162 registry.npmjs.org" > /etc/hosts

echo "Clear and WarmUp Cache"
php bin/console cache:clear;
php bin/console cache:warmup;
php bin/console make:migration
php bin/console doctrine:migrations:migrate

echo "Starting symfony application"
#echo 'start php... start nginx';
#if [ -z "$1" ]; then
    	#exec /usr/bin/supervisord -c /var/etc/supervisor/conf.d/supervisord.conf
	#php-fpm;
	#nginx;
	#php /var/www/html/bin/console debug:router
#else
    #exec bin/console "$@"
#fi


# start NGINX server

#php-fpm; 

#chmod 777 /var/run/php/php8-fpm.sock;
php-fpm8.2;
# nginx -g 'daemon off;'
# nginx;
# -g 'daemon on;'
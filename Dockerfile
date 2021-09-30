FROM wordpress:5.8-fpm-alpine
RUN set -eux; \
        apk --no-cache add pcre-dev ${PHPIZE_DEPS} mariadb-client less;\
        pecl install redis; \
        docker-php-ext-enable redis; \
        apk del pcre-dev ${PHPIZE_DEPS};
RUN set -e; \
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
	chmod +x wp-cli.phar; \
	mv wp-cli.phar /usr/local/bin/wp;

COPY ./etc/php/conf.d/wordpress.ini /usr/local/etc/php/conf.d/wordpress.ini
VOLUME [ "/var/backup", "/var/www/html", "/var/www/html/wp-content/themes", "/var/www/html/wp-content/plugins", "/var/www/html/wp-content/uploads" ] 
COPY ./etc/php/php.ini /usr/local/etc/php/php.ini

USER www-data:www-data

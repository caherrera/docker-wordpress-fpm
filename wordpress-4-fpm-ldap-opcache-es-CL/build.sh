docker build -t carlositline/wordpress:4-php7.2-fpm-ldap-opcache-es-CL -f Dockerfile .
docker build -t carlositline/wordpress:4-php7.2-fpm-ldap-opcache-es-CL-xdebug -f Dockerfile-xdebug .

docker push carlositline/wordpress:4-php7.2-fpm-ldap-opcache-es-CL
docker push carlositline/wordpress:4-php7.2-fpm-ldap-opcache-es-CL-xdebug


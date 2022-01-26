FROM carlositline/wordpress:5-fpm-redis-ldap
USER root
RUN \
    apt-get update; \
    apt-get install -y \    
    locales \
    locales-all \
    ; \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \
	rm -rf /var/lib/apt/lists/*

ENV LC_ALL es_CL.UTF-8
ENV LANG es_CL.UTF-8
ENV LANGUAGE es_CL.UTF-8
ENV TZ="America/Santiago"



USER www-data

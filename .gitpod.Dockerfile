FROM gitpod/workspace-full

USER root

RUN apt-get update \
 && apt-get -y install php7.2-fpm \
 && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

COPY php-fpm.conf /etc/php/7.2/fpm/php-fpm.conf
RUN sed -i 's|/run/php/php7.2-fpm.pid|/tmp/php7.2-fpm.pid|' /lib/systemd/system/php7.2-fpm.service

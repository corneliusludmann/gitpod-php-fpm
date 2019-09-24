FROM gitpod/workspace-full

USER root

RUN apt-get update \
 && apt-get -y install php7.2-fpm \
 && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

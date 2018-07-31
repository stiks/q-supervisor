FROM iterium/symfony3-php7fpm:v0.2

MAINTAINER Kirill Garbar <kirill@iterium.co.uk>

RUN apk add --no-cache supervisor

COPY supervisor.conf /etc/supervisord.conf

WORKDIR /srv

ENTRYPOINT ["/usr/bin/supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]

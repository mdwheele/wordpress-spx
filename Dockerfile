FROM wordpress:php7.1-apache

RUN apt-get update && apt-get install -y \
    git \
    && git clone https://github.com/NoiseByNorthwest/php-spx.git /tmp/php-spx \
        && cd /tmp/php-spx \
        && phpize \
        && ./configure \
        && make \
        && make install

COPY spx.ini /usr/local/etc/php/conf.d/
FROM webikecentos:7

LABEL maintainer="Vu Nguyen Vu <vunguyenvu35@gmail.com>"

RUN yum-config-manager --enable remi-php72 

RUN yum --enablerepo=remi,remi-php72 install -y php-fpm \
        php-common \
        php-opcache \
        php-pecl-apcu \
        php-cli \
        php-pear \
        php-pdo \
        php-mysqlnd \
        php-pgsql \
        php-pecl-mongodb \
        php-pecl-redis \
        php-pecl-memcache \
        php-pecl-memcached \
        php-pecl-solr2 \
        php-xmlwriter \
        php-gd \
        php-mbstring \
        php-mcrypt \
        php-xml \
        php-dev \
        php-json \
        php-iconv \
        php-mysqli \
        php-dom \
        php-zip \
        libmcrypt-dev \
        make \
        curl 

ADD php-7.2.ini /etc/php/conf.d/
ADD php-7.2.ini /etc/php/cli/conf.d/
RUN rm /etc/php-fpm.d/www.conf
ADD php-fpm-7.2.conf /etc/php-fpm.d/

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN mkdir /run/php-fpm

RUN chmod -R 755  /run/php-fpm root root

WORKDIR /var/www/app

CMD ["php-fpm", "-F"]

EXPOSE 9001
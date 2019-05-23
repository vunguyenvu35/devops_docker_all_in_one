FROM webikecentos:7

LABEL maintainer="Vu Nguyen Vu <vunguyenvu35@gmail.com>"

RUN yum-config-manager --enable remi-php56 

RUN yum --enablerepo=remi,remi-php56 install -y php-fpm \
        php-common \
        php-opcache \
        php-cli \
        php-pear \
        php-pdo \
        php-mysqlnd \
        php-pgsql \
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
        php-pecl-apcu \
        php-pecl-mongodb \
        php-pecl-redis \
        php-pecl-memcache \
        php-pecl-memcached \
        php-pecl-solr2 \
        libmcrypt-dev \
        make \
        curl 

ADD php-5.6.ini /etc/php/conf.d/
ADD php-5.6.ini /etc/php/cli/conf.d/
RUN rm /etc/php-fpm.d/www.conf
ADD php-fpm-5.6.conf /etc/php-fpm.d/

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

RUN chmod -R 755  /run/php-fpm root root

WORKDIR /var/www/app

CMD ["php-fpm", "-F"]

EXPOSE 9002
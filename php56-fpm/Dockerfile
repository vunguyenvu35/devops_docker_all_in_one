# Build an image with name: webikecentos:7
FROM centos:7

LABEL maintainer="Vu Nguyen Vu <vunguyenvu35@gmail.com>"

RUN yum install -y bzip2-libs ca-certificates cyrus-sasl-lib freetds freetype glibc gmp gnutls keyutils-libs krb5-libs libcom_err libcurl libffi libgcc libgcrypt libgpg-error libicu libidn libjpeg-turbo libmemcached libpng libselinux libssh2 libstdc++ libtasn1 libtidy libxml2 libxslt ncurses-libs nettle nspr nss nss-softokn-freebl nss-util openldap openssl-libs p11-kit pcre postgresql-libs readline wget xz-libs zlib

RUN yum -y update 

RUN yum install -y epel-release

RUN yum install -y git

RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

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
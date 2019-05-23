# Build an image with name: webikecentos:7
FROM centos:7

LABEL maintainer="Vu Nguyen Vu <vunguyenvu35@gmail.com>"

RUN yum install -y bzip2-libs ca-certificates cyrus-sasl-lib freetds freetype glibc gmp gnutls keyutils-libs krb5-libs libcom_err libcurl libffi libgcc libgcrypt libgpg-error libicu libidn libjpeg-turbo libmemcached libpng libselinux libssh2 libstdc++ libtasn1 libtidy libxml2 libxslt ncurses-libs nettle nspr nss nss-softokn-freebl nss-util openldap openssl-libs p11-kit pcre postgresql-libs readline wget xz-libs zlib

RUN yum -y update 

RUN yum install -y epel-release

RUN yum install -y git
FROM vunguyenvu35/centos7:latest

MAINTAINER vunguyenvu35@gmail.com

LABEL Vendor="CentOS" \
      License=GPLv2 \
      Version=2.4.6-40
# ensure www-data user exists
RUN useradd -u 82 www-data

ENV HTTPD_PREFIX /usr/local/apache2
ENV PATH $HTTPD_PREFIX/bin:$PATH
RUN mkdir -p "$HTTPD_PREFIX" \
	&& chown www-data:www-data "$HTTPD_PREFIX"
WORKDIR $HTTPD_PREFIX

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

# ADD conf/ /etc/httpd/conf

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]

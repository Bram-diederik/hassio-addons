ARG BUILD_FROM=ghcr.io/hassio-addons/base:15.0.3
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

# Create directory for apache2 to store PID file
RUN mkdir /run/apache2

RUN apk --no-cache add apache2 libxml2-dev apache2-utils apache2-mod-wsgi apache2-ssl d apache2-mod-access_compat apache2-mod-authn_file apache2-mod-autoindex apache2-mod-env apache2-mod-mime apache2-mod-negotiation apache2-mod-proxy apache2-mod-proxy_ajp apache2-mod-proxy_fcgi apache2-mod-proxy_html apache2-mod-setenvif apache2-mod-ssl apache2-mod-alias apache2-mod-authz_core apache2-mod-deflate apache2-mod-filter apache2-mod-mime apache2-mod-php8.2 apache2-mod-proxy_balancer apache2-mod-proxy_fdpass apache2-mod-proxy_html apache2-mod-proxy_ftp apache2-mod-proxy_http apache2-mod-reqtimeout apache2-mod-slotmem_shm apache2-mod-status apache2-mod-auth_basic apache2-mod-authz_user apache2-mod-dir apache2-mod-http2 apache2-mod-negotiation apache2-mod-proxy apache2-mod-proxy_connect apache2-mod-proxy_ftp apache2-mod-proxy_http2 apache2-mod-reqtimeout apache2-mod-socache_shmcb apache2-mod-xml2enc apache2-mod-authn_core apache2-mod-autoindex apache2-mod-dir apache2-mod-http2 apache2-mod-negotiation apache2-mod-proxy apache2-mod-proxy_express apache2-mod-proxy_hcheck apache2-mod-proxy_scgi apache2-mod-rewrite apache2-mod-ssl


#Configure Logging
RUN sed -i -r 's@Errorlog .*@Errorlog /dev/stderr@i' /etc/apache2/httpd.conf
RUN echo "Transferlog /dev/stdout" >> /etc/apache2/httpd.conf

# Copy data for add-on
COPY run.sh /
COPY index.html /
RUN chmod a+x /run.sh
RUN chmod a+x /index.html
CMD [ "/run.sh" ]

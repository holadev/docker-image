FROM httpd:2.4.57

RUN mkdir -p /var/www/hello-us
RUN mkdir -p /var/www/hello-ca
RUN mkdir -p /var/www/hola-mx
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/httpd-vhosts.conf
COPY index.html /var/www/
COPY hello-us/* /var/www/hello-us/
COPY hello-ca/* /var/www/hello-ca/
COPY hola-mx/* /var/www/hola-mx/

EXPOSE 80

FROM httpd:2.4.57

RUN mkdir -p /var/www/hello-us
RUN mkdir -p /var/www/hello-ca
RUN mkdir -p /var/www/hola-mx
RUN mkdir -p /var/www/hola-blog
RUN mkdir -p /var/www/hola-premiosgoya

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/httpd-vhosts.conf

COPY index.html /var/www/

COPY index.html /var/www/hola-blog/
COPY index.html /var/www/hola-us/
COPY index.html /var/www/hola-ca/
COPY index.html /var/www/hola-mx/
COPY index.html /var/www/hola-premiosgoya/

COPY hello-us/* /var/www/hello-us/
COPY hello-ca/* /var/www/hello-ca/
COPY hola-mx/* /var/www/hola-mx/
COPY hola-blog/* /var/www/hola-blog/
COPY hola-premiosgoya/* /var/www/hola-premiosgoya/

EXPOSE 80

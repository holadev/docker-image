FROM httpd:2.4.57

RUN mkdir -p /var/www/hello-us
RUN mkdir -p /var/www/hello-ca
RUN mkdir -p /var/www/hello-blog
RUN mkdir -p /var/www/hello-fashion
RUN mkdir -p /var/www/hello-india
RUN mkdir -p /var/www/hello-royal-weddings
RUN mkdir -p /var/www/hello-origin
RUN mkdir -p /var/www/hola-mx
RUN mkdir -p /var/www/hola-blog
RUN mkdir -p /var/www/hola-premiosgoya
RUN mkdir -p /var/www/hola-images
RUN mkdir -p /var/www/hola-us


COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY httpd-vhosts.conf /usr/local/apache2/conf/httpd-vhosts.conf

COPY index.html /var/www/

COPY index.html /var/www/hola-blog/
COPY index.html /var/www/hola-us/
COPY index.html /var/www/hola-ca/
COPY index.html /var/www/hola-mx/
COPY index.html /var/www/hola-premiosgoya/
COPY index.html /var/www/hola-images/

COPY hello-us/* /var/www/hello-us/
COPY hello-ca/* /var/www/hello-ca/
COPY hola-mx/* /var/www/hola-mx/
COPY hola-us/* /var/www/hola-us/
COPY hola-blog/* /var/www/hola-blog/
COPY hola-images/* /var/www/hola-images/
COPY hola-premiosgoya/* /var/www/hola-premiosgoya/
COPY hello-blog/* /var/www/hello-blog/
COPY hello-fashion/* /var/www/hello-fashion/
COPY hello-india/* /var/www/hello-india/
COPY hello-royal-weddings/* /var/www/hello-royal-weddings/
COPY hello-origin/* /var/www/hello-origin/

EXPOSE 80

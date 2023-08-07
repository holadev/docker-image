FROM httpd:2.4.57

RUN mkdir -p /var/www/hello-us
RUN mkdir -p /var/www/hello-ca
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY index.html /var/www/
COPY hello-us/* /var/www/hello-us/
COPY hello-ca/* /var/www/hello-ca/


RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/' /usr/local/apache2/conf/httpd.conf
EXPOSE 80

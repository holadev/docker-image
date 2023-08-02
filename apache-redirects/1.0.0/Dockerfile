FROM httpd:2.4.57
COPY .htaccess /usr/local/apache2/htdocs/.htaccess
COPY index.html /usr/local/apache2/htdocs/index.html

RUN sed -i '/LoadModule rewrite_module/s/^#//g' /usr/local/apache2/conf/httpd.conf
RUN sed -i 's/AllowOverride None/AllowOverride All/' /usr/local/apache2/conf/httpd.conf
EXPOSE 8080
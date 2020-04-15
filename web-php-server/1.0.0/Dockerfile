FROM webdevops/php-apache-dev:7.2

# Node
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash - && apt-get install -y nodejs

# Install yarn
RUN apt-get install -y apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn openssh-client git sudo

#Chromium installation
RUN apt-get update && apt-get install -y chromium

WORKDIR /app
RUN echo 'DocumentRoot "/app/public"' >> /opt/docker/etc/httpd/vhost.common.d/vhost.conf

RUN mkdir -p /var/logs/apps
RUN chmod 777 /var/logs/apps
FROM webdevops/php-apache-dev:7.4

# Node
RUN curl -sL https://deb.nodesource.com/setup_15.x | bash - && apt-get install -y nodejs

# Install yarn
RUN apt-get install -y apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn openssh-client git sudo jq
RUN rm -rf /usr/local/etc/php/conf.d/xdebug.ini

RUN apt-get install -y libasound2 libgtk-3-0 libgtk-3-0 libxdamage1 libxkbcommon0 libdrm2 libx11-xcb1 libatk-bridge2.0 libatk1.0-0 libnss3
FROM webdevops/php-apache-dev:7.2

# Node
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && apt-get install -y nodejs


RUN apt-get install -y apt-transport-https gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget

RUN git clone https://github.com/developer-hola/percy-puppeteer.git && cd percy-puppeteer && rm -rf .git && npm install

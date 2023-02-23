FROM php:7.4-fpm


RUN apt update && apt install -y zlib1g-dev g++ libicu-dev git zip libzip-dev zip librabbitmq-dev \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && pecl install amqp \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip \
    && docker-php-ext-enable amqp

RUN apt-get --assume-yes install wget firefox-esr > /dev/null

WORKDIR /var/www/symfony_app

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sS https://get.symfony.com/cli/installer | bash

RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

RUN git config --global user.email "musab.ehab@gmain.com" \
    && git config --global user.name "Mosaab ehab"


#FROM php:7.4-alpine
#
## Chromium and ChromeDriver
#ENV PANTHER_NO_SANDBOX 1
## Not mandatory, but recommended
#ENV PANTHER_CHROME_ARGUMENTS='--disable-dev-shm-usage'
#RUN apk add --no-cache chromium chromium-chromedriver

# Firefox and GeckoDriver (optional)
ARG GECKODRIVER_VERSION=0.28.0

RUN #apt update && apt install -y firefox-esr --no-install-recommend

RUN wget -q https://github.com/mozilla/geckodriver/releases/download/v$GECKODRIVER_VERSION/geckodriver-v$GECKODRIVER_VERSION-linux64.tar.gz; \
    tar -zxf geckodriver-v$GECKODRIVER_VERSION-linux64.tar.gz -C /usr/bin; \
    rm geckodriver-v$GECKODRIVER_VERSION-linux64.tar.gz


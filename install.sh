#!/usr/bin/env bash

echo "INSTALLATION: NGINX WEB-SERVER"
apt-get install \
    nginx \
    --yes

service nginx restart

echo "INSTALLATION: FULL PHP 7"
apt-get install \
    php-fpm \
    php-mysql \
    php-curl \
    php-cli \
    php-gd \
    php-json \
    php-intl \
    php-pear \
    php-dev \
    php-common \
    php-soap \
    php-mbstring \
    php-zip \
    php-imagick \
    --yes

service php7.*-fpm restart

echo "Instalacion de memcached"
sudo apt install memcached\
	--yes
sudo apt install php-memcached\
	--yes
service nginx restart
service php7.*-fpm restart
sudo apt-get install certbot python-certbot-nginx\
	--yes

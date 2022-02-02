FROM php:7.4-apache-bullseye
MAINTAINER Lara Pruna Ternero "laraprn.12@gmail.com"
RUN apt update && apt upgrade -y && apt install mariadb-client -y && docker-php-ext-install mysqli pdo pdo_mysql && apt clean && rm -rf /var/lib/apt/lists/
ADD bookmedik /var/www/html/
ADD bookmedik.sh /opt/
RUN chmod +x /opt/bookmedik.sh
ENTRYPOINT ["/opt/bookmedik.sh"]

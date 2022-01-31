FROM debian:bullseye
MAINTAINER Lara Pruna Ternero "laraprn.12@gmail.com"
RUN apt update && apt install apache2 libapache2-mod-php php php-mysql mariadb-client -y
ADD bookmedik /var/www/html/
RUN chmod +x /var/www/html/bookmedik.sh && rm /var/www/html/index.html
ENTRYPOINT ["/var/www/html/bookmedik.sh"]

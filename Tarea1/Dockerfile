FROM debian:bullseye
MAINTAINER Lara Pruna Ternero "laraprn.12@gmail.com"
RUN apt update && apt upgrade -y && apt install apache2 libapache2-mod-php php php-mysql mariadb-client -y && apt clean && rm -rf /var/lib/apt/lists/*
ADD bookmedik /var/www/html/
ADD bookmedik.sh /opt/
RUN chmod +x /opt/bookmedik.sh && rm /var/www/html/index.html
ENTRYPOINT ["/opt/bookmedik.sh"]

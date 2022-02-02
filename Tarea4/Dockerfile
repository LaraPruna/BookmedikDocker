FROM nginx
MAINTAINER Lara Pruna Ternero "laraprn.12@gmail.com"
RUN apt update && apt upgrade -y && apt install mariadb-client -y && apt clean && rm -rf /var/lib/apt/lists/*
ADD default.conf /etc/nginx/conf.d/
ADD bookmedik /usr/share/nginx/html
ADD bookmedik.sh /opt/
RUN chmod +x /opt/bookmedik.sh && rm /usr/share/nginx/html/index.html
CMD ["/opt/bookmedik.sh"]

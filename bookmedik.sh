#! /bin/bash

sleep 20
mysql -u $DB_USER --password=$DB_PASSWORD -h $DB_HOST $DB_NAME < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND

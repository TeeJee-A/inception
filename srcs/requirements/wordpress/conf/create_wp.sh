#!/bin/bash
echo hello world from the other side
wp core download --path=/var/www/ --allow-root 
sleep 10
cat /var/www/wp-config-sample.php > /var/www/wp-config.php
chmod -R 0777 /var/www/wp-content
sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

chown -R www-data:www-data /var/www
wp config set DB_NAME $DB_NAME --path=/var/www/ --allow-root
wp config set DB_USER $DB_USER --path=/var/www/ --allow-root
wp config set DB_PASSWORD $USER_PASSWORD --path=/var/www/ --allow-root
wp config set DB_HOST $DB_HOST --path=/var/www/ --allow-root

wp core install --url=ataji.42.fr --path=/var/www/ --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PWD --admin_email=$ADMIN_MAIL --allow-root
wp user create --allow-root  --path=/var/www/  $WP_USER $WP_MAIL --role=author --user_pass=$WP_PASS

/usr/sbin/php-fpm7.4 -F
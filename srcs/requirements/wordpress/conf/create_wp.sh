#!/bin/bash
mkdir -p /run/php
wp core download --allow-root --path=/var/www/
cp /var/www/wp-config-sample.php /var/www/wp-config.php
chmod -R 0777 /var/www/wp-content
sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
wp config set DB_NAME $DB_NAME --path=/var/www/ --allow-root
wp config set DB_USER $DB_USER --path=/var/www/ --allow-root
wp config set DB_PASSWORD $DB_PASS --path=/var/www/ --allow-root
wp config set DB_HOST $DB_HOST --path=/var/www/ --allow-root
wp core install --allow-root --url=ataji.42.fr --path=/var/www/ --title=$TITLE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PWD --admin_email=$ADMIN_MAIL
wp user create --allow-root  --path=/var/www/  $WP_USER $WP_MAIL --role=author --user_pass=$WP_PASS

/usr/sbin/php-fpm7.4 -F

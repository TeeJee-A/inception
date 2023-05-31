service mariadb start
cat << EOF > /tmp/init.sql
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;
EOF
mysql -u root < /tmp/init.sql
kill `cat /var/run/mysqld/mysqld.pid`
mysqld
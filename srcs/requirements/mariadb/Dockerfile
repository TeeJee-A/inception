FROM debian:stable
RUN apt-get update && apt-get install -y mariadb-server
RUN mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld
RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
EXPOSE 3306
COPY ./requirements/mariadb/conf/create_db.sh /tmp
RUN chmod 777 /tmp/create_db.sh
CMD ["sh", "/tmp/create_db.sh"]
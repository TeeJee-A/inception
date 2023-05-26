FROM debian:stable
RUN apt-get update && apt-get install -y nginx
RUN apt-get update && apt-get install -y openssl
WORKDIR /etc/nginx
RUN cp /var/www/html/index.nginx-debian.html /var/www/html/index.html
RUN openssl req -new -newkey rsa:2048 -nodes -keyout ataji.42.fr.key -out ataji.42.fr.csr -subj "/CN=ataji.42.fr.com/O=ataji.42.fr/C=US"
RUN openssl x509 -req -days 365 -in ataji.42.fr.csr -signkey ataji.42.fr.key -out ataji.42.fr.crt
RUN rm ataji.42.fr.csr
EXPOSE 80
COPY conf/nginx.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
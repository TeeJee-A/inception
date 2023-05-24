FROM debian:stable
RUN apt-get update && apt-get install -y nginx
EXPOSE 80
COPY conf/nginx.conf /etc/nginx/conf.d/
CMD ["nginx", "-g", "daemon off;"]
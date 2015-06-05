FROM alpine
MAINTAINER support@tutum.co
RUN apk --update add nginx php-fpm
RUN mkdir -p /tmp/nginx && echo "clear_env = no" >> /etc/php/php-fpm.conf
ADD www /www
ADD nginx.conf /etc/nginx/
EXPOSE 80
ADD start.sh /start.sh
CMD /start.sh

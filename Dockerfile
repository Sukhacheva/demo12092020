FROM alpine:latest

ADD default.conf /etc/nginx/conf.d/default.conf
RUN apk add --update nginx
WORKDIR /run/nginx
WORKDIR /data
ADD index.html /data/index.html

EXPOSE 4321

CMD nginx -g 'daemon off;'

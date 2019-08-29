FROM alpine:latest

LABEL maintainer "Go Watanabe / gowatana@vmtn.jp"

RUN apk --update add nginx

COPY 2048 /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "daemon off; pid /run/nginx.pid;"]

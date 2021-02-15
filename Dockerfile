FROM docker.io/library/alpine:latest
RUN apk update && apk add nginx && mkdir -p /run/nginx && apk add curl
EXPOSE 80
COPY default.conf  /etc/nginx/conf.d/
COPY podman.txt /podman.txt
CMD ["nginx", "-g", "daemon off;"]

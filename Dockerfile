FROM openresty/openresty:alpine-fat
RUN apk add --no-cache curl perl 
RUN /usr/local/openresty/luajit/bin/luarocks  install cuid
EXPOSE 80
COPY nginx.conf usr/local/openresty/nginx/conf/

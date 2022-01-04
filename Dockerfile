FROM nginx:1.18.0

COPY dist /opt/web
COPY docker/nginx.conf /etc/nginx/nginx.conf
#COPY docker/entrypoint.sh /entrypoint.sh

#ENV LISTEN_DOMAIN=cmdb.movee.cn

#暴露容器80端口
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

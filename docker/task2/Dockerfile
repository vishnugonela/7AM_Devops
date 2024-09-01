FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 80

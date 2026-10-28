FROM nginx:1.27-alpine
RUN rm -f /usr/share/nginx/html/index.html
COPY site/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080

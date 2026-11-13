FROM nginx:1.29-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
RUN rm -rf /usr/share/nginx/html/.git /usr/share/nginx/html/.github \
    /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/nginx.conf
EXPOSE 80

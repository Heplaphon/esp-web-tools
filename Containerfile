FROM nginx
COPY index.html /usr/share/nginx/html
COPY static /usr/share/nginx/html/static
COPY dist/web /usr/share/nginx/html/static/dist
COPY bin /usr/share/nginx/html/bin
FROM node:20-alpine as node
WORKDIR /app
COPY . .
RUN npm install
RUN apk update && apk add jq
RUN script/build

FROM nginx
COPY index.html /usr/share/nginx/html
COPY static /usr/share/nginx/html/static
COPY --from=node /app/dist/web /usr/share/nginx/html/static/dist
COPY bin /usr/share/nginx/html/bin
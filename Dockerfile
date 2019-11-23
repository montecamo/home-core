FROM nginx:alpine

WORKDIR /app

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/subdomains /etc/nginx/subdomains

COPY . /usr/share/nginx/html

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]

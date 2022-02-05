FROM node:alpine

MAINTAINER Edson Soares

WORKDIR /app
COPY . /app/ 
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000


# Preparando Nginx
FROM nginx:latest
MAINTAINER Edson Soares

WORKDIR /app/nginx/html
COPY . /app/nginx/html/
RUN apt install nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
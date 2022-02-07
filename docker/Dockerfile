FROM node:latest

MAINTAINER Edson Soares
COPY . /var/www/ 
WORKDIR /var/www
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000
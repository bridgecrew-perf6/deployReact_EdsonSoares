FROM node:alpine

MAINTAINER Edson Soares

WORKDIR /usr/app
COPY . /usr/app
RUN npm install
ENTRYPOINT npm start
EXPOSE 3000
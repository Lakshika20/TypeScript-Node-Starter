FROM node:latest

WORKDIR /usr/nodeapp

COPY . .

EXPOSE 8080

RUN npm install
RUN npm run build

ENTRYPOINT [ "npm","run","serve" ]
FROM node:20

#create app directory
WORKDIR WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY server.js .

EXPOSE 3000
CMD [ "node", "server.js" ]

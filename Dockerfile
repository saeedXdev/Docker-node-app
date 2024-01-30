FROM node:10-alpine

RUN mkdir -p /home/dev/saeed/docker-node-app/node_modules && chown -R node:node /home/dev/saeed/docker-node-app

WORKDIR /home/dev/saeed/docker-node-app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]

FROM node:10.15.3-alpine

WORKDIR /usr/node/first-docker

COPY package.json ./

RUN npm install --production

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
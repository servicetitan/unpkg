FROM node:14

COPY . .

RUN yarn install
RUN yarn build

ENTRYPOINT ["node", "server.js"]

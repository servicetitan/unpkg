FROM node:12

COPY . .

RUN yarn install
RUN yarn build
RUN node server.js

ENTRYPOINT ["node", "server.js"]

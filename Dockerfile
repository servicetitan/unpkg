FROM node:12

COPY . .

RUN yarn install

ENV NODE_ENV=production \
    NPM_AUTH_TOKEN=e50409cc-2344-446a-b235-5a621f0d4e36 \
    CLOUDFLARE_EMAIL= \
    CLOUDFLARE_KEY= \
    ORIGIN=

RUN yarn build

ENTRYPOINT ["node", "server.js"]

FROM verdaccio/verdaccio:4.12.2 as common

FROM common as builder
USER root
ENV NODE_ENV=production
WORKDIR /verdaccio/plugins
RUN npm install verdaccio-static-token

FROM common
COPY --from=builder /verdaccio/plugins/node_modules/verdaccio-static-token /verdaccio/plugins/verdaccio-static-token

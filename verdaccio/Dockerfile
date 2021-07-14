FROM verdaccio/verdaccio:5.1.1 as common

FROM common as builder
USER root
ENV NODE_ENV=production
RUN npm install -g verdaccio-static-token

FROM common
COPY --from=builder --chown=$VERDACCIO_USER_UID:root /opt/verdaccio/node_modules/verdaccio-static-token /verdaccio/plugins/verdaccio-static-token

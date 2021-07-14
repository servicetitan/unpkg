FROM verdaccio/verdaccio:5.1.1
WORKDIR /verdaccio/plugins
USER root
ENV NODE_ENV=production
RUN npm install verdaccio-static-token
USER verdaccio

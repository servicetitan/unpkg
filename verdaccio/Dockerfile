FROM verdaccio/verdaccio:5.1.1
USER root
ENV NODE_ENV=production
RUN mkdir /verdaccio/plugins && cd /verdaccio/plugins && npm install verdaccio-static-token
USER verdaccio

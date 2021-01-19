FROM ubuntu as preparation

RUN apt-get update && \
    apt-get -y install apache2-utils 

COPY . .

RUN ./create-config.sh
RUN ./create-user.sh

FROM node:14

WORKDIR "/home/node/verdaccio"

COPY package.json .
COPY package-lock.json .
COPY --from=preparation config.yaml ./conf/
COPY --from=preparation htpasswd ./storage/

RUN npm install

ENTRYPOINT ["npm", "start", "--", "--config", "./conf/config.yaml"]

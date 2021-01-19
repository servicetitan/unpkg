#! /bin/bash

./create-config.sh
./create-user.sh

npm install

npm start -- --config ./conf/config.yaml

#! /bin/bash

mkdir storage

htpasswd -b -c ./storage/htpasswd ${NPM_LOGIN} ${NPM_PASSWORD}

#! /bin/bash

htpasswd -b -c htpasswd ${NPM_LOGIN} ${NPM_PASSWORD}

#! /bin/bash

mkdir conf

sed \
    -e 's,${NPM_AUTH_TOKEN},'"${NPM_AUTH_TOKEN}"',g' \
    -e 's,${PORT},'"${PORT}"',g' \
    template.yml >./conf/config.yaml

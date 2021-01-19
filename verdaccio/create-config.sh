#! /bin/bash

sed \
    -e 's,${NPM_AUTH_TOKEN},'"${NPM_AUTH_TOKEN}"',g' \
    -e 's,${PORT},'"${PORT}"',g' \
    template.yml >config.yaml

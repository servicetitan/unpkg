FROM ubuntu

RUN apt-get update && \
    apt-get -y install apache2-utils curl && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash && \
    apt-get -y install nodejs

COPY . .

ENTRYPOINT ["./start.sh"]

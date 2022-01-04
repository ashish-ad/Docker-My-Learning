FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=saudamini817

RUN mkdir -p /home/app

COPY C:\Users\ashis\OneDrive\Documents\GitHub\Repositories\Docker\app

CMD [node.js , server.js]
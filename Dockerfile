FROM node:lts-alpine

RUN apk add --no-cache ca-certificates curl openssl git openssh-client docker
RUN apk add --no-cache git python2 build-base
RUN npm i -g --force yarn
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]

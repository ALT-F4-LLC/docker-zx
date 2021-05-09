FROM alpine:3.13.5

ENV VERSION="1.2.2"

RUN apk add --no-cache \
  bash \
  nodejs \
  npm

RUN npm install -g \
  zx@${VERSION}

ENTRYPOINT [ "zx" ]

FROM node:13.1.0-alpine3.10

RUN set eux; \
  yarn global add now@16.7.2 \
  && now --version

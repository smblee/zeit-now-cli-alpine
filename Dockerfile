FROM node:12.16.2-alpine3.10
ARG HEROKU_VERSION=6.14.20
ARG NOW_VERSION=16.7.2
# install heroku CLI
RUN apk --update add \
		bash \
		git \
	&& npm install -g heroku-cli@$HEROKU_VERSION
# install now CLI
RUN yarn global add now@$NOW_VERSION \
  && now --version

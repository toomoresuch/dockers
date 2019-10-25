FROM node:12.13.0

MAINTAINER toomore_such <info@webgent.com>

ENV LANG C.UTF-8

RUN npm install -g --unsafe-perm=true --no-optional \
ejs-cli \
html-minify \
elm \
elm-format \
elm-live \
elm-test && \
npm cache clean --force

WORKDIR /tmp

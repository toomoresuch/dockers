FROM node:12.18.3

LABEL maintainer="toomore_such <info@webgent.com>"

ENV LANG C.UTF-8
ENV DEBCONF_NOWARNINGS yes
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
apt-get install -y build-essential && \
apt-get install -y libgl1-mesa-glx && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

# ELM & EJS
RUN npm install -g --unsafe-perm=true --no-optional \
ejs-cli \
html-minify

# NCU & IMAGEMIN
RUN npm install -g --unsafe-perm=true \
npm-check-updates \
imagemin-cli \
imagemin-gifsicle \
imagemin-keep-folder \
imagemin-mozjpeg \
imagemin-pngquant

# ELM
# RUN npm install -g --unsafe-perm=true \
# elm \
# elm-format \
# elm-live \
# elm-test \

# GATSBY
RUN npm install -g --unsafe-perm=true \
gatsby-cli && \
npm cache clean --force
RUN gatsby telemetry --disable

WORKDIR /tmp

RUN echo 'alias nl="npm list --depth=0"' >> ~/.bashrc
RUN echo 'alias nlg="npm list --depth=0 -g"' >> ~/.bashrc

RUN echo 'alias gs="cd /tmp/share && gatsby develop -p 80 --host 0.0.0.0"' >> ~/.bashrc
RUN echo 'alias gus="cd /tmp/share && ncu && gatsby develop -p 80 --host 0.0.0.0"' >> ~/.bashrc
RUN echo 'alias gucs="cd /tmp/share && ncu && gatsby clean && gatsby develop -p 80 --host 0.0.0.0"' >> ~/.bashrc

RUN echo 'alias gb="cd /tmp/share && ncu && gatsby clean && gatsby build"' >> ~/.bashrc

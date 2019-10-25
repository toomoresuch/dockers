FROM ruby:2.6.5

MAINTAINER toomore_such <info@webgent.com>

ENV LANG C.UTF-8
ENV DEBCONF_NOWARNINGS yes
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && \
apt-get install -y build-essential && \
apt-get install -y nodejs && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

RUN gem install bundler

WORKDIR /tmp
ADD Gemfile Gemfile
RUN bundle install

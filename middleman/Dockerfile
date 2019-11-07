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
ADD middleman.sh middleman.sh

RUN chmod 444 /tmp/Gemfile
RUN chmod 755 /tmp/middleman.sh
RUN bundle install

RUN echo 'alias server="cd /tmp/share && bundle exec middleman -p 80"' >> ~/.bashrc
RUN echo 'alias build="cd /tmp/share && bundle exec middleman build --verbose || bundle exec middleman build --verbose"' >> ~/.bashrc

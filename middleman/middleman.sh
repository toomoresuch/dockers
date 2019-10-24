#!/usr/bin/env bash

cd /tmp/share #$1

rm Gemfile.lock

bundle update

bundle exec middleman -p 80

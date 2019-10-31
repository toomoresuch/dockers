#!/bin/bash

cd /tmp/share

for i in Gemfile Gemfile.lock; do
    [ -f ./$i ] && rm $i
done

bundle update && bundle exec middleman -p 80

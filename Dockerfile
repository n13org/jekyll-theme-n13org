# https://hub.docker.com/_/ruby
FROM ruby:3.0.2-alpine3.14

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

# set the working dir
WORKDIR /usr/src/app

## Check if Gemfile exits, if not run bundle init
# RUN test -f Gemfile && echo "Gemfile already exits" || (bundle init && bundle install)

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

RUN bundle install
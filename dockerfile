# Create a jekyll container from a Ruby Alpine Image

# At a minimum use ruby 2.5 or later

FROM ruby:2.7-alpine3.15

# Add jekyll dependencies to Alpine

RUN apk update
RUN apk add --no-cache build-base gcc make git

# Update the ruby bundler and install jekyll
RUN gem update bundler && gem install bundler jekyll




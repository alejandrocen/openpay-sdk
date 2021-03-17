FROM ruby:2.5-alpine

RUN apk update && apk add --virtual build-deps build-base

WORKDIR /app

COPY lib/ lib/
COPY openpay-sdk.gemspec .
COPY Gemfile .

RUN bundle install

COPY test/ test/
COPY Rakefile .


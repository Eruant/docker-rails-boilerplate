FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /src
WORKDIR /src
COPY Gemfile /src/Gemfile
COPY Gemfile.lock /src/Gemfile.lock
RUN bundle install
COPY . /src

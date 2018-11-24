FROM ruby:alpine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN gem install rails -v '5.2.1'
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

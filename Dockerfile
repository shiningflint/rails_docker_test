FROM ruby:2.5.1-alpine
RUN apk add --update build-base postgresql-dev tzdata
RUN gem install rails -v '5.2.1'
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app

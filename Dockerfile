FROM ruby:2.5.3-alpine
RUN apk add --update build-base postgresql-dev tzdata nodejs yarn
RUN gem install rails -v '5.2.1'
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN bundle install
RUN rake assets:precompile RAILS_ENV=production
COPY ./public/assets/ /app/public/assets/

FROM ruby:2.5.3-alpine
RUN apk add --update build-base postgresql-dev tzdata nodejs yarn
RUN gem install rails -v '5.2.1'
WORKDIR /app
COPY . .
RUN bundle install
RUN rake assets:precompile RAILS_ENV=production
COPY ./public/assets/ ./public/assets/

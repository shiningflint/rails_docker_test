FROM ruby:2.5.3-alpine
RUN apk add --update build-base postgresql-dev tzdata nodejs yarn
RUN mkdir /app \
    &&  gem install rails -v '5.2.1'
WORKDIR /app
COPY . /app/
RUN bundle install \
    && rake assets:precompile
EXPOSE 3000
CMD ["rails", "server"]

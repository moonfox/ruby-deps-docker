FROM ruby:2.5.3-alpine3.8

LABEL Name=ruby-deps Version=0.0.1
# EXPOSE 3000

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app
COPY . /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["pry"]
    

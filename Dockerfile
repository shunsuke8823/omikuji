FROM ruby:3.4

# PostgreSQL に接続するためのライブラリなどを入れる
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev postgresql-client && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /omikuji

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000

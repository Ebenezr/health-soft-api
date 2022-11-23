FROM ruby:2.7

RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends \
    && rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD rails server -b 0.0.0.0

FROM ruby:3.3.1-slim-bullseye

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      build-essential \
      curl \
      git \
      libjemalloc2 \
      vim \
      ghostscript \
      imagemagick \
      libpq-dev \
      shared-mime-info \
      ca-certificates \
      gnupg \
      pkg-config \
      libvips \
      nodejs npm libpq-dev

WORKDIR /rails

# refference to config jemalloc https://github.com/jemalloc/jemalloc/blob/dev/TUNING.md
ENV LD_PRELOAD="libjemalloc.so.2" \
    MALLOC_CONF="dirty_decay_ms:1000,tcache_max:2048,muzzy_decay_ms:3000,background_thread:true"

RUN gem install bundler -v 2.5.7
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY package.json .
COPY package-lock.json .
RUN npm install

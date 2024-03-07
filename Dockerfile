ARG RUBY_VERSION=3.3.0
ARG BUNDLER_VERSION=2.5.6

FROM ruby:$RUBY_VERSION-alpine3.19

ARG BUNDLER_VERSION

# App lives here
WORKDIR /app

# Install bundler in given version and set as default
RUN gem install -N bundler:$BUNDLER_VERSION && \
  bundle config default $BUNDLER_VERSION

# Install application gems
COPY --link Gemfile Gemfile.lock ./
RUN bundle install && \
  rm -rf ~/.bundle/ $BUNDLE_PATH/ruby/*/cache $BUNDLE_PATH/ruby/*/bundler/gems/*/.git

# Copy application code
COPY --link . .

# Entrypoint prepares the application
ENTRYPOINT ["/app/bin/docker-entrypoint"]

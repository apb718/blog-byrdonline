# Build environment for the site. Rebuild whenever Gemfile or
# Gemfile.lock changes; the image bakes in `bundle install` so the
# Jenkins build stage just runs `jekyll build` against a bind-mount.
FROM docker.io/ruby:3.4-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends build-essential git \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

# Install gems. Source is bind-mounted at run time, so we don't COPY it.
COPY Gemfile Gemfile.lock /srv/jekyll/
RUN bundle config set deployment 'false' \
 && bundle install --jobs 4

ENTRYPOINT ["bundle", "exec", "jekyll"]
CMD ["build"]

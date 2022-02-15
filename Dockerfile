from debian:stable-slim

RUN apt-get update \
  && apt-get install -y \
  curl \
  git

RUN curl -SL "https://github.com/getzola/zola/releases/download/v0.15.3/zola-v0.15.3-x86_64-unknown-linux-gnu.tar.gz" | tar xzf - -C /usr/local/bin

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

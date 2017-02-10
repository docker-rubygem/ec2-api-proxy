FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.3

RUN gem install ec2-api-proxy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ec2-api-proxy"]
CMD ["--help"]

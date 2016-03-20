FROM alpine:3.3

MAINTAINER Maik Hummel <m@ikhummel.com>

ENV SUPPLY_VERSION=0.5.2

RUN DEPS='ruby-dev make gcc musl-dev ruby-rdoc ruby-irb'; \
    apk add --no-cache ruby less && \
    apk add --no-cache $DEPS && \
    gem install supply:$SUPPLY_VERSION json && \
    apk del --no-cache $DEPS

CMD ["supply"]

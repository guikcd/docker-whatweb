FROM ruby:2.7-alpine AS builder

ENV WHATWEB_VERSION v0.5.5

RUN apk update && apk add git make gcc musl-dev
RUN git clone --branch $WHATWEB_VERSION https://github.com/urbanadventurer/WhatWeb.git /src/whatweb

# https://github.com/urbanadventurer/WhatWeb/wiki/Installation
RUN gem install rchardet:1.8.0 mongo:2.14.0 json:2.5.1

RUN cd /src/whatweb && bundle install

FROM ruby:2.7-alpine

COPY --from=builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=builder /src/whatweb /src/whatweb/

RUN adduser -D whatweb
USER whatweb

WORKDIR /src/whatweb

CMD /src/whatweb/whatweb

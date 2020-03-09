FROM ruby:2.2

ENV WHATWEB_VERSION v0.4.9

RUN gem install rchardet bson:4.4.2 mongo:2.10 json
RUN git clone --branch $WHATWEB_VERSION https://github.com/urbanadventurer/WhatWeb.git /src/whatweb

WORKDIR /src/whatweb

CMD /src/whatweb/whatweb

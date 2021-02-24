FROM ruby:2.3

ENV WHATWEB_VERSION v0.5.2

RUN git clone --branch $WHATWEB_VERSION https://github.com/urbanadventurer/WhatWeb.git /src/whatweb

# https://github.com/urbanadventurer/WhatWeb/wiki/Installation
RUN gem install rchardet:1.8.0 mongo:2.11.4 json:2.3.0

RUN cd /src/whatweb && bundle install

WORKDIR /src/whatweb

CMD /src/whatweb/whatweb

FROM ruby:2.7

ENV WHATWEB_VERSION master

RUN git clone --branch $WHATWEB_VERSION https://github.com/urbanadventurer/WhatWeb.git /src/whatweb

# https://github.com/urbanadventurer/WhatWeb/wiki/Installation
RUN gem install rchardet mongo json
RUN cd /src/whatweb && bundle install

WORKDIR /src/whatweb

CMD /src/whatweb/whatweb

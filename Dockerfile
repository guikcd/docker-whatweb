FROM ruby:2.2

RUN gem install rchardet mongo json
RUN git clone https://github.com/urbanadventurer/WhatWeb.git /src/whatweb

WORKDIR /src/whatweb

CMD /src/whatweb/whatweb

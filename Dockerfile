FROM ruby

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler
RUN gem install rails
RUN apt-get update -qq && apt-get install -y nodejs && apt-get install -y npm
RUN npm i -g yarn

ENTRYPOINT [ "/bin/bash" ]
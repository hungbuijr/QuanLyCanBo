FROM node:15.13.0-alpine3.10
RUN npm install -gf yarn
RUN yarn add bootstrap

FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /QuanLyCanBo
COPY Gemfile /QuanLyCanBo/Gemfile
COPY Gemfile.lock /QuanLyCanBo/Gemfile.lock
RUN bundle install
COPY . /QuanLyCanBo


COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000


CMD ["rails", "server", "-b", "0.0.0.0"]
# docker run -it -p 3000:3000 ror

FROM ruby:2.7.2

# set a directory for the app
WORKDIR /usr/src/app
# copy all the files to the container
COPY . .
# define the port number the container should expose
EXPOSE 3000
RUN apt update
RUN apt -y install curl gnupg
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt -y install build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN apt -y install vim nano libsqlite3-dev nodejs yarn
RUN gem update bundler
RUN bundle install
RUN gem install rails
RUN gem install sqlite3
RUN yarn install --check-files
CMD ["rails", "server"]


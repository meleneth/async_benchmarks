FROM ruby:latest
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

EXPOSE 8000

# Configure the main process to run when running the image
CMD ["ruby", "async_server.rb"]


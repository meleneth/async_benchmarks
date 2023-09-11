#!/usr/bin/env/ruby

require 'async'
require 'async/http/server'
require 'async/http/client'
require 'async/http/endpoint'
require 'async/http/protocol/response'

LISTEN_ADDRESS = "http://0.0.0.0:8000/"
my_endpoint = Async::HTTP::Endpoint.parse(LISTEN_ADDRESS)
puts "async_some_content listening on #{LISTEN_ADDRESS}"

app = lambda do |request|
# get username from header
  some_message = "halloooo #{ request.headers['username'] }"
  Protocol::HTTP::Response[200, {}, [
    "<html><body>#{ some_message }</body></html>"
  ]]
end

server = Async::HTTP::Server.new(app, my_endpoint)

Async do |task|
  server_task = task.async do
    server.run
  end
end





require "rack"
require "greeter"
require "upcase"
require "builder"

builder = Builder.new
builder.use Rack::Reloader, 0
builder.use Rack::ShowExceptions
builder.use Rack::Lint
builder.use Upcase
builder.run Greeter.new
app = builder.to_app

Rack::Server.start app: app, Port: 8080

require "rack"
require "greeter"
require "upcase"
require "builder"

builder = Builder.new do
  use Rack::Reloader, 0
  use Rack::ShowExceptions
  use Rack::Lint
  use Upcase
  
  run Greeter.new
end
app = builder.to_app

Rack::Server.start app: app, Port: 8080

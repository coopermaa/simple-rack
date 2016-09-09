require "greeter"
require "upcase"
require "builder"

app = Builder.new do
  use Rack::Reloader, 0
  use Rack::ShowExceptions
  use Rack::Lint
  use Upcase
  
  run Greeter.new
end

Rack::Server.start app: app, Port: 8080
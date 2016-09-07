require "rack"
require "greeter"

Rack::Server.start app: Greeter.new, Port: 8080
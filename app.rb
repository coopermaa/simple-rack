require "rack"
require "greeter"
require "upcase"

app = Upcase.new(Greeter.new)
Rack::Server.start app: app, Port: 8080

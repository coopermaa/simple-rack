require "rack"
require "greeter"
require "upcase"

# Reloader has a 10 seconds cooldown by default
# Change it to 0, so that it picks up the changes immediately
app = Rack::Reloader.new(Rack::ShowExceptions.new(Rack::Lint.new(Upcase.new(Greeter.new))), 0)
Rack::Server.start app: app, Port: 8080

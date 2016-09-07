require "rack"

class Greeter
  def call(env)
      [200, {"Content-Type" => "text/html"}, ["Hello World"]]
  end
end

Rack::Server.start app: Greeter.new, Port: 8080
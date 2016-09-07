# A middleware that uppercases your app's response
class Upcase
  def initialize(app)
    @app = app
  end
  
  def call(env)
    status, headers, body = @app.call(env)
    body.each { |chunk| chunk.upcase! }
    [status, headers, body]
  end
end

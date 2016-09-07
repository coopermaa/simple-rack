# A middleware that uppercases your app's response
class Upcase
  def initialize(app)
    @app = app
  end
  
  def call(env)
    @status, @headers, @body = @app.call(env)
    [@status, @headers, self]
  end
  
  def each(&block)
    @body.each &:upcase!
    @body.each &block
  end
end

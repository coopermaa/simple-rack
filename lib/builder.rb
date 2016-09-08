class Builder
  def initialize(&block)
    @use, @run, @to_app = [], nil, nil
  end

  def use(middleware, *args, &block)
    @use << proc { |app| middleware.new(app, *args, &block) }
  end
  
  def run(app)
    @run = app
  end
  
  def to_app
    return @to_app if @to_app
    raise "missing run statement" unless @run
    @to_app = @use.reverse.inject(@run) { |a, p| p.call(a) }
  end
end
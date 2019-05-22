class Example
  def hello
    puts 'hello'
    @name = 'nilesh'
  end

  def bye
    puts 'bye'
    name
  end

  def name
    puts @name
  end

  protected :name
end



example = Example.new
example.hello
example.bye
#example.name

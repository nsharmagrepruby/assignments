class Example
  
  def initialize age=10
    @name = "Nilesh"
    @age = age
  end

  public

  def greet
    puts "hello #{@name}"
  end

  attr_accessor :name, :age

  protected

    def bye
      puts "bye #{@name}"
    end
end



example1 = Example.new 12
puts example1.name
puts example1.age
example1.greet
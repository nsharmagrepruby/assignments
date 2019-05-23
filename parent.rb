class Parent
  def initialize
    puts "In parent classs"
  end

  def hello
    @name = 'nilesh'
  end

  def bye
    puts 'bye from parent'
  end

  private :bye
  
  attr_accessor :name
end

class Child < Parent
  
  def initialize
    super() 
    self.hello
    puts "In Child classs"
  end

  def hello
      puts 'hello from child'

  end

  def bye
    puts 'bye from child'
  end


end

parent = Parent.new
parent1 = Parent.allocate
puts parent1
puts parent1.name
parent.name = 'name'
puts parent.name
parent.hello
#puts parent
puts parent.to_s

child = Child.new
child.hello
puts '****'
child.bye
puts Child.ancestors
puts 1.send '*', 2
#example.name

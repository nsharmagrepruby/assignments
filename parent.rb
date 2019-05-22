class Parent
  def initialize
    puts "In parent classs"
  end

  def hello
    puts 'hello'
    @name = 'nilesh'
  end

  def bye
    puts 'bye from parent'
    name
  end

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
    name
  end
end

parent = Parent.new
parent1 = Parent.allocate
puts parent1
puts '111111'
puts parent1.name
parent.name = 'name'
puts parent.name

parent.hello
parent.bye
puts parent
puts parent.to_s

child = Child.new
child.hello
child.bye
puts Child.ancestors
puts 1.send '*', 2
#example.name

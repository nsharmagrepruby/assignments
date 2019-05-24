class EvenOdd
  
  def initialize(number)
    @number = number 
  end  

  def is_even?
    if number % 2 == 0
      true
    else
      false
    end
  end

  attr_accessor :number

end

evenodd = EvenOdd.new(4)
puts evenodd.is_even?

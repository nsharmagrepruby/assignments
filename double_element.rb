class Element

  def initialize elements
    @elements = elements.split("")
  end

  def double
  @elements.map { |e| print e*2 }
  end

  def show
    puts @elements 
  end

end

e1=Element.new "N123"
e1.double
e1.show
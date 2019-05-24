class Double

  def initialize(array)
    @array = array
  end

  def double
    @string_array = @array.split('')
    @string_array = @string_array.map! { |string_array| string_array * 2 }
  end

  def show
    puts @string_array
  end
end

a = Double.new('name')
a.double
a.show

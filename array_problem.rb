class ArrayProblem
  def initialize(array)
    @array = array.split(" ")
    @hashes = Hash.new()
  end

  def frequencyItem()
    for subArray in @array
      i = subArray.size
      j = 0
      while j < i
        value = @hashes[subArray[j]]
        puts "value", value 
        if value != nil
          value += 1
          @hashes.store(subArray[j], value)
        else
          @hashes.store(subArray[j], 1)
        end
        j += 1
      end
    end
  end

  def show
    puts @hashes
  end
end

puts 'enter an array with seprated  by space you will get frequency of all char'
array = gets
solution = ArrayProblem.new(array)
solution.frequencyItem
solution.show

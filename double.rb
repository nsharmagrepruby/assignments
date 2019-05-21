class CharSet
	def initialize(arraya)
	@array=arraya
	end


	def double()
	@stringArraya=@array.split(" ")
	@stringArraya.map { |stringArray|  stringArray=stringArray*2 }
	end

	def show()
	puts @stringArraya
	end


end


a=CharSet.new("name")
a.double()
a.show()
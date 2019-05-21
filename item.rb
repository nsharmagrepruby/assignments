class ItemClass
	def initialize(quantiity,price,category)
		
		@quantiity = quantiity
		@price = price
		@category = category
	end

	def quantiity
		@quantiity
	end

	def quantiity=(quantiity)
		@quantiity = quantiity
	end

	def price
		@price
	end

	def price=(price)
		@price = price
	end

	def category
	 	@category
	 end
	
	def show
	puts @quantiity,@price,@category
	end

end


	

	# def category=(category)
	# 	@category=category
	# end

puts "class loaded"
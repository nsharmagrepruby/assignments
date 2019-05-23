class Item
  def initialize(quantiity, price, category,is_imported)
    @quantiity = quantiity.to_f
    @price = price.to_f
    @category = category
    @is_imported = is_imported
  end

  def is_imported
    @is_imported
  end

  def get_tax_added_price 
    @taxed_price
  end

  def tax_added_price (taxed_price) 
    @taxed_price = taxed_price
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
    puts @quantiity , @price, @category ,@is_imported
  end
end


  

  # def category=(category)
  #   @category=category
  # end

puts "class loaded"
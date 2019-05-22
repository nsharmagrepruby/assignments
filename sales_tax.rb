require_relative 'item'

class Calculation
  def last_price(items)   
    final_price = 0.0
    sales_tax = 0.0
    items.each do |item|
      sales_tax +=  item.quantiity * item.price * 0.05
      if item.category == 'books'
        final_price = final_price + item.quantiity * item.price
      elsif item.category == 'food'
        final_price = final_price + item.quantiity * item.price
      elsif item.category == 'medical'
        final_price = final_price + item.quantiity * item.price
      else
        final_price += item.price + item.price * 0.1
      end
      final_price
    end
    final_price
    sales_tax
  end
end

i1 = Item.new(1, 12.49, 'books')
i2 = Item.new(1, 0.85, 'food')
i3 = Item.new(1, 16.49, 'cd')


items = Array.[](i1, i2, i3)
calculation = Calculation.new
print calculation.last_price(items)

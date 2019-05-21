require_relative 'item'

class Calculation
  def last_price(arrrayItems)   
    final_price=0.0
    salextax=0.0
    arrrayItems.each do |arrrayitem|
      salextax +=  arrrayitem.price * 0.05
      if arrrayitem.category.eql? 'books'
        final_price = final_price + arrrayitem.price
      elsif arrrayitem.category ==='food'
        final_price = final_price + arrrayitem.price
      elsif arrrayitem.category == 'medical'
        final_price = final_price + arrrayitem.price
      else
        final_price += arrrayitem.price + arrrayitem.price* 0.1
      end
      puts final_price
    end
    puts final_price
    puts salextax
  end
end

i1 = ItemClass.new(1, 12.49, 'books')
i2 = ItemClass.new(1, 0.85, 'food')
i3 = ItemClass.new(1, 16.49, 'cd')


items = Array.[](i1, i2, i3)
calculation = Calculation.new
calculation.last_price(items)

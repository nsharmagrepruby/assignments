require_relative 'item'

class SalesTax
  def last_price(items)
    final_price = 0.0
    sales_tax = 0.0
    items.each do |item|      
      if item.is_imported
        sales_tax += item.final_price * 0.05
      end

      if item.category == 'book'
        tax_price = item.quantiity * item.price
        item.tax_added_price(tax_price + item.price)
        final_price += tax_price
      elsif item.category == 'food'
        tax_price = item.quantiity * item.price
        item.tax_added_price(tax_price + item.price)
        final_price += tax_price
      elsif item.category == 'medical'
        tax_price = item.quantiity * item.price
        item.tax_added_price(tax_price + item.price)
        final_price += tax_price
      elsif item.category == 'music'
        tax_price = item.quantiity * item.price
        item.tax_added_price(tax_price + item.price)
        final_price += tax_price
      elsif item.category == 'chocolate'
        tax_price = item.quantiity * item.price
        item.tax_added_price(tax_price + item.price)
        final_price += tax_price
      else
        final_price += item.price + item.price * 0.1
      end
      puts "#{item.quantiity} #{item.category} at #{item.get_tax_added_price}"
      end
    puts "sales tax #{sales_tax}"
    puts "Final price #{final_price}"
  end
end

puts 'Total number of inputs'
inputs = gets.to_i
i = 0
items = []
while i < inputs
  string = gets
  item_number = string[0, 1]
  imported = string.include?(' imported')
  price_index = string.index(':')
  price = string[price_index + 1, string.size].to_f
  category = 'other'
  if string.include?('book')
    category = 'book'
  elsif string.include?('food')
    category = 'food'
  elsif  string.include?('medical')
    category = 'medical'
  elsif  string.include?('music')
    category = 'music'
  elsif  string.include?('chocolate')
    category = 'chocolate'
  end

  i1 = Item.new(item_number, price, category, imported)
  i1.show
  items << i1
  i += 1
end
p items
salesTax = SalesTax.new
salesTax.last_price(items)

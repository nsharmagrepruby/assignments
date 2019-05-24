# frozen_string_literal: true
  
require_relative 'item'

class SalesTax
  def last_price(items)
    final_price = 0.0
    sales_tax = 0.0
    items.each do |item|
      sales_tax += item.final_price * 0.05 if item.is_imported
      final_price = tax_calculation(item, final_price)
    end
    puts "sales tax #{sales_tax}"
    puts "Final price #{final_price.round(2)}"
  end

  def tax_calculation(item, final_price)
    if item.category == 'other '
      tax_price = item.quantiity * item.price * 0.1
      item.tax_added_price(tax_price + item.price)
      final_price += tax_price + item.price
    else
      item.price = item.quantiity * item.price
      item.tax_added_price(item.price)
      final_price += item.price
    end
    puts "#{item.quantiity} #{item.category} at #{item.get_tax_added_price}"
    final_price
  end

  def self.get_item_by_input(string)
    quantiity = string[0, 1]
    imported = string.include?(' imported')
    price_index = string.index(':')
    price = string[price_index + 1, string.size].to_f
    category = ['book', 'food', 'medical', 'pills', 'chocolate'].find{ |type| string.include?(type)}
    category = 'other ' if category.nil?
    Item.new(quantiity, price, category, imported)
  end

  def self.take_input(input)
    i = 0
    items = []
    while i < input
      string = gets
      item = get_item_by_input string
      item.show
      items << item
      i += 1
    end
    items
  end
end

puts 'Total number of inputs'
inputs = gets.to_i
sales_tax = SalesTax.new
items = SalesTax.take_input inputs
sales_tax.last_price(items)

require_relative 'input_to_item_parser'
require_relative 'tax_calculation'
require_relative 'output_user'

class InputFromUser

  def initialize
    @items = []
    @inputs = []
  end

  def take_input
    print "Input\n"
    input_line = gets.chomp
    while input_line != ""
      @inputs << input_line
      input_to_item_parser = InputToItemParser.new
      item = input_to_item_parser.get_item(input_line)
      @items << item
      input_line = gets.chomp
    end
  end
  
  def get_output
    taxcalculate = TaxCalculation.new
    items = taxcalculate.tax(@items)
    total_price_of_all = taxcalculate.total_price_of_all
    total_sales_tax = taxcalculate.total_sales_tax
    OutputUser.show_result(items, total_sales_tax, inputs, total_price_of_all)
  end  
  
  attr_reader :items, :inputs
end
  
input_from_user = InputFromUser.new
input_from_user.take_input
input_from_user.get_output
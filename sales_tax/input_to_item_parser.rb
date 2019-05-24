require_relative 'item'

class InputToItemParser

  def get_item(input_line)
    category = get_category(input_line)
    imported = imported?(input_line)
    initial_cost = get_intail_cost(input_line)
    Item.new(initial_cost, category, imported)
  end

  private
  
  def category_list 
    ['book', 'food', 'medical', 'pills', 'chocolate']
  end

  def get_category(input_line)
    category = category_list().find{ |type| input_line.include?(type)}
    category = 'other' if category == nil
  end

  def imported?(input_line)
    input_line.include?(' imported')
  end

  def get_intail_cost(input_line)
    array = input_line.split(' ')
    array.last.to_f
  end
end
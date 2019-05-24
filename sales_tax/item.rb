class Item
  
  def initialize (initial_cost, category, is_imported)
    @initial_cost =  initial_cost.to_f
    @category = category
    @is_imported = is_imported
  end

  def imported?
    @is_imported
  end

  attr_reader :initial_cost, :category, :final_cost
  attr_writer :final_cost
end
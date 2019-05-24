require_relative 'item'

class TaxCalculation

  def initialize
    @total_imported_cost = 0.0
    @total_sales_tax = 0.0
    @total_price_of_all = 0.0
  end

  def imported_tax(item)
    imported_cost = (item.initial_cost * 0.05).round(2)
    @total_imported_cost += imported_cost
    imported_cost
  end

  def sales_tax(item)
    sales_tax = (item.initial_cost * 0.1).round(2)
    @total_sales_tax += sales_tax
    sales_tax
  end

  def tax(items)
    for item in items
      final_cost_item = 0
      final_cost_item = sales_tax(item) if item.category == 'other'
      final_cost_item += imported_tax(item) if item.imported?
      final_cost_item += item.initial_cost
      item.final_cost = final_cost_item.round(2)
      @total_price_of_all += item.final_cost
    end
    @total_sales_tax  += @total_imported_cost
    items
  end
  attr_reader :final_cost_item, :total_sales_tax,:total_price_of_all
end
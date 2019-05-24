require "minitest/autorun"
require_relative "../item"
require_relative "../tax_calculation"

class TestTaxCalculation < Minitest::Test
  def setup
    @tax_calculation = TaxCalculation.new
    @item = Item.new(0.85, 'book', false)
  end

  def test_imported_tax
    assert_equal 0.04, @tax_calculation.imported_tax(@item)
  end

  def test_sales_tax
    assert_equal 0.09, @tax_calculation.sales_tax(@item)
  end
end
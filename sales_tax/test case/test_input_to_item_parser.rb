require "minitest/autorun"
require_relative "../item"
require_relative "../input_to_item_parser"

class TestInputToItemParser < Minitest::Test 

  def setup
    @input_to_item = InputToItemParser.new
    @item = Item.new(0.85, 'chocolate', false)
  end

  def test_get_item
    assert_equal @item, @input_to_item.get_item("1 chocolate bar at 0.85") #tax applicable marked that category to other 
  end

  def test_get_intail_cost
    input_line = '1 chocolate bar at 0.85'   #private methode call No method given 
    assert_equal 0.85,@input_to_item.send.get_intail_cost(input_line)
  end
end
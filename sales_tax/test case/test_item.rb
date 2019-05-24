require "minitest/autorun"
require_relative "../item"

class TestItem < Minitest::Test
  def setup
    @item = Item.new(1, 'book', false)
  end

  def test_is_imported
    assert_equal false, @item.imported?
  end

  def test_initial_cost
    assert_equal 1, @item.initial_cost
  end

  def test_initial_cost
    assert_equal "book", @item.category  
  end
end
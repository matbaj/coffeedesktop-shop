require 'test_helper'

class CoffeeCellTest < Cell::TestCase
  test "last" do
    invoke :last
    assert_select "p"
  end
  

end

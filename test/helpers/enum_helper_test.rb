require 'test_helper'

class EnumHelperTest <  ActionView::TestCase
  test 'enum_map' do
    map = enum_map({one: 1, two: 2, two_and_a_half: 2.5})
    assert_equal({"One" => :one,
                  "Two" => :two,
                  "Two and a half" => :two_and_a_half},
                 map)
  end
end

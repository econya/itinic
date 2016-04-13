require 'test_helper'

class EnumHelperTest <  ActionView::TestCase
  test 'enum_map' do
    map = enum_map({one: 1, two: 2, two_and_a_half: 2.5})
    assert_equal({"One" => :one,
                  "Two" => :two,
                  "Two and a half" => :two_and_a_half},
                 map)
  end

  test 'sym_to_s' do
    l = %w{a_b_c HaIr luLLaby}
    assert_equal(["A b c", "Hair", "Lullaby"],
                 l.map{|s| sym_to_s s})
    assert_nil sym_to_s nil
    assert_equal "", sym_to_s("")
  end
end

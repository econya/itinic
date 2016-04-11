require 'test_helper'

class HackerTest < ActiveSupport::TestCase
  test "Hacker needs first name or alias set to be valid" do
    hacker = Hacker.new(first_name: "Linus")
    assert hacker.valid?
    hacker = Hacker.new(last_name: "Shim")
    assert !hacker.valid?
    hacker = Hacker.new(alias: "shim")
    assert hacker.valid?
  end
  test "Hacker strips strings for *name and alias" do
    hacker = Hacker.new(alias: "  shim  ", first_name: " Linus ", last_name: "Sh im ")
    hacker.save
    assert_equal "shim", hacker.alias
    assert_equal "Linus", hacker.first_name
    assert_equal "Sh im", hacker.last_name
  end
end

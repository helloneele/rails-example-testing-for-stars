require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "no of stars is 0" do
    u = User.new
    assert u.no_stars == 0
  end
end

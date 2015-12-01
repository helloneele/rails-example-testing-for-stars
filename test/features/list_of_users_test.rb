require "test_helper"

class ListOfUsersTest < Capybara::Rails::TestCase
  test "sanity" do
    visit users_path
    assert_content page, "Users"
    refute_content page, "Error"
  end
end

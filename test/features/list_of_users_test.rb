require "test_helper"

class ListOfUsersTest < Capybara::Rails::TestCase
  scenario "Without Javascript", js: false do
    visit users_path
    assert_content page, "Users"
    refute_content page, "Created by JavaScript"
  end
  scenario "With Javascript", js: true do
    visit users_path
    save_screenshot('tmp/list_of_users_screenshot.png', :full => true)
    assert_content page, "Users"
    assert_content page, "Created by JavaScript"
  end
end

require 'test_helper'

class ListOfUsersTest < Capybara::Rails::TestCase
  test 'user#index page contains heading' do
    visit users_path
    assert_content page, 'Users'
    refute_button page, 'load info'

  end

  test 'user#index page contains button load info' do
    Capybara.current_driver = Capybara.javascript_driver
    visit users_path
    save_screenshot('list_of_users_screenshot.png', full: true)
    assert_content page, 'Users'
    assert_button page, 'load info'
    puts "\nconsole.log said:"
    puts page.driver.console_messages
  end

  test 'user#new page, create a user' do
    Capybara.current_driver = Capybara.javascript_driver
    visit new_user_path
    save_screenshot('create-user.png', full: true)
    fill_in('First name', with: 'Test Vorname')
    fill_in('Middle initial', with: 'Test Middle')
    fill_in('Last name', with: 'Test Nachname')
    click_button('Create User')
    assert_content page, 'successfully'
    assert_content page, 'Test Vorname'
    save_screenshot('user-saved.png', full: true)
  end

  test 'user#new page, create a user, validation does not pass' do
    Capybara.current_driver = Capybara.javascript_driver
    visit new_user_path
    save_screenshot('create-user.png', full: true)
    fill_in('First name', with: 'Test Vorname')
    fill_in('Middle initial', with: 'Test Middle')
    click_button('Create User')
    assert_content page, 'successfully'
    assert_content page, 'Test Vorname'
    save_screenshot('user-saved.png', full: true)
  end
end

require "rails_helper"

RSpec.feature "Logout", :type => :feature do

  let(:user) { create(:user) }

  scenario "Use successfully logins out", js: true do

    sign_in user
    visit root_path
    find('#user-settings').click
    find('a', text: "LogOut").click
    expect(page).to have_selector('li a', text: 'LogIn')

  end

end
require "rails_helper"

RSpec.feature "Login", :type => :feature do
  let(:user) { create(:user ) }

  scenario 'user navigates to the login page and signs in successfully', js: true do
    user
    visit root_path
    find('a', text: 'LogIn').click
    fill_in 'user[email]', with: user.email
    fill_in 'user[password]', with: user.password
    find('.btn-outline-success').click
    expect(page).to have_selector('#navbarDropdown')
  end

end
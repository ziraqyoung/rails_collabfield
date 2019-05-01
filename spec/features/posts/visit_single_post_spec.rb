require 'rails_helper'

RSpec.feature "Visit single page", :type => :feature do

  let(:user) { create(:user) }
  let(:post) { create(:post) }

  scenario "User goes to single page from home page", js: true do
    post
    visit root_path
    page.find('.single-post-card').click
    expect(page).to have_selector('body .modal')
    page.find('.interested a').click
    expect(page).to have_selector('#single-post-content p', text: post.content)
  end

end
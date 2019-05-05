require 'rails_helper'
include Warden::Test::Helpers

RSpec.describe "new", :type => :request do
  # nb there is no user created
  context "non_signed in user" do
    it "redirect to the root_path" do
      get '/posts/new'
      expect(response).to redirect_to(root_path)
    end
  end

  context "signed_in user" do
    let(:user) { create(:user) }
    before(:each) { login_as user }

    it "renders new template" do
      get '/posts/new'
      expect(response).to render_template(:new)
    end
  end

end
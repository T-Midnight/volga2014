require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "works! (now write some real specs)" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "User page" do
    it "should have the content 'All Users'" do
      visit '/users'
      expect(page).to have_content('All Users')
    end
  end

end

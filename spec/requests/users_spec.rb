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

  describe "with valid information" do
    describe "after saving the user" do
      before { click_button submit }
      let(:user) { User.find_by(email: 'user@example.com') }

      it { should have_link('Sign out') }
      it { should have_selector('div.alert.alert-success', text: 'Welcome') }
    end
  end

end

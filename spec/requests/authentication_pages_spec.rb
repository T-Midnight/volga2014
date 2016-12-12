require 'rails_helper'

RSpec.describe "AuthenticationPages", type: :request do
  describe "GET /authentication_pages" do
    it "works! (now write some real specs)" do
      get signin_path
      expect(response).to have_http_status(200)
    end
  end

  describe "signin page" do
    it "should have the content 'Sign in'" do
      visit '/signin'
      expect(page).to have_content('Sign up')
    end
  end
end

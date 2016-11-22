require 'rails_helper'

RSpec.describe "RegistrationPages", type: :request do
  describe "GET /registration_pages" do
    it "works! (now write some real specs)" do
      get registration_new_path
      expect(response).to have_http_status(200)
    end
  end

  subject { page }

  describe "registration page" do
    before { visit registration_new_path }

    it { should have_content('Sign up') }
  end
end

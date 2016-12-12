require 'rails_helper'

RSpec.describe "Questions", type: :request do
  describe "Question Page" do
    it "should have the content 'All Questions'" do
      visit '/questions'
      expect(page).to have_content('All Questions')
    end
  end
end



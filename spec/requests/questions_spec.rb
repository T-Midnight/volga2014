require 'spec_helper'
RSpec.describe "Questions", type: :request do
    before {visit questions_path}
  describe "GET /questions" do
    before {visit questions_path}
    it "starts server" do
      expect(response).to have_http_status(200)
    end
  end
end

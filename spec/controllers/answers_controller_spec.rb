require 'rails_helper'

RSpec.describe AnswersController, type: :controller do

  describe "GET #content:string" do
    it "returns http success" do
      get :content:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #question_id:integer" do
    it "returns http success" do
      get :question_id:integer
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #autor_name:string" do
    it "returns http success" do
      get :autor_name:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #date_creation:date" do
    it "returns http success" do
      get :date_creation:date
      expect(response).to have_http_status(:success)
    end
  end

end

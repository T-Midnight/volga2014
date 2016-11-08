require 'rails_helper'

RSpec.describe Question, type: :model do
  before {@question = Questions.new(title: "Example title", message: "Message", autor_name: "ExAuthor", date_creation: "12.09.2016")}
  subject {@question}
  it {should respond_to(:title)}
  it {should respond_to(:message)}
  it {should respond_to(:autor_name)}

  it {should be_valid}

  describe "when title is not present" do
    before {question.title = " "}
    it {should_not be_valid}
  end

  describe "when message is not present" do
    before {question.message = " "}
    it {should_not be_valid}
  end

  describe "when autor_name is not present" do
    before {question.autor_name = " "}
    it {should_not be_valid}
  end
end


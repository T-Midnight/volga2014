require 'rails_helper'

RSpec.describe User, type: :model do
  before {@user = User.new(name: "Exname", email: "ExEmail@foobar.com")}
  subject {@user}
  it { should respond_to(:name)}
  it { should respond_to(:email)}
  it { should respond_to(:answers)}
  it { should respond_to(:questions)}

  it { should be_valid}

  describe "with blank name" do
    before { @user.name = " "}
    it { should_not be_valid }
  end

  describe "with user_name that is too long" do
    before {@user.name = "a" * 31}
    it { should_not be_valid }
  end

  describe "answer associations" do
    before {@user.save }
    it "should destroy associates answers" do
      answers = @user.answers
      @user.destroy
      answers.reload
      expect(answers).to be_empty
    end
  end

  describe "question associations" do
    before {@user.save }
    it "should destroy associates questions" do
      questions = @user.questions
      @user.destroy
      questions.reload
      expect(questions).to be_empty
    end
  end
end


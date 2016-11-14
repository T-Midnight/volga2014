require 'spec_helper'

RSpec.describe Answer, type: :model do
  before { @answer = Answer.new(content: "answer for the question", question_id: "0", autor_name: "ExAutor", date_creation: "12.09.2016")}
  subject {@answer}
  it { should respond_to(:content) }
  it { should respond_to(:question_id) }
  it { should respond_to(:autor_name)}
  it { should respond_to(:question)}

  it { should be_valid }

  describe "when question_id is not present" do
    before { @answer.question_id = nil }
    it { should_not be_valid }
  end

  describe "with blank content" do
    before { @answer.content = " " }
    it { should_not be_valid }
  end

  describe "with blank autor_name" do
    before {@answer.autor_name = " "}
    it { should_not be_valid}
  end

  describe "with autor_name that is too long" do
    before {@answer.autor_name = "a" * 21}
    it { should_not be_valid }
  end

  describe "with content that is too long" do
    before { @answer.content = "a" * 1001 }
    it { should_not be_valid }
  end
end


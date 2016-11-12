require 'spec_helper'

RSpec.describe Answer, type: :model do
  before { @answer = Answer.new(content: "answer for the question", question_id: "0", autor_name: "ExAutor", date_creation: "12.09.2016")}
  subject {@answer}
  it { should respond_to(:content) }
  it { should respond_to(:question_id) }
  it { should respond_to(:autor_name)}

  it { should be_valid }

  describe "when question_id is not present" do
    before { @micropost.user_id = nil }
    it { should_not be_valid }
  end
end


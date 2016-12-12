RSpec.describe Question, type: :model do
  before {@question = Question.new(title: "Example title", message: "Message")}
  subject {@question}
  it {should respond_to(:title)}
  it {should respond_to(:message)}
  it {should respond_to(:answers)}
  it {should respond_to(:user)}

  it {should be_valid}


  describe "when title is not present" do
    before {@question.title = " "}
    it { should_not be_valid}
  end

  describe "when message is not present" do
    before {@question.message = " "}
    it { should_not be_valid}
  end

  describe "when question with this title is already exist" do
    before do
      question_with_same_title = @question.dup
      question_with_same_title.save
    end
    it { should_not be_valid}
  end

  describe "answer associations" do

    before { @question.save }
    let!(:older_answer) do
      create :answer, question: @question, created_at: 1.day.ago
    end
    let!(:newer_answer) do
      create :answer, question: @question, created_at: 1.hour.ago
    end

    it "should have the right answer in the right order" do
      expect(@question.answers.order('created_at DESC').to_a).to eq [newer_answer, older_answer]
    end

    it "should destroy associated answers" do
      answers = @question.answers
      @question.destroy
      answers.reload
      expect(answers).to be_empty
    end
  end
end

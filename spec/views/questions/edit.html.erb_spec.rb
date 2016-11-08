require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :title => "MyString",
      :message => "MyString",
      :autor_name => "MyString"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_title[name=?]", "question[title]"

      assert_select "input#question_message[name=?]", "question[message]"

      assert_select "input#question_autor_name[name=?]", "question[autor_name]"
    end
  end
end

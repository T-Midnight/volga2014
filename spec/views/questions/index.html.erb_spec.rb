require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :title => "Title",
        :message => "Message",
        :autor_name => "Autor Name"
      ),
      Question.create!(
        :title => "Title",
        :message => "Message",
        :autor_name => "Autor Name"
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Message".to_s, :count => 2
    assert_select "tr>td", :text => "Autor Name".to_s, :count => 2
  end
end

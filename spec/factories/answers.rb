FactoryGirl.define do
  factory :answer do
    content "Lorem ipsum"
    sequence(:question_id) {|n| "Question_id #{n}"}
    question
  end
end

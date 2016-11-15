FactoryGirl.define do
  factory :answer do
    content "Lorem ipsum"
    sequence(:question_id) {|n| "Question_id #{n}"}
    sequence(:autor_name) {|n| "Autor_name #{n}"}
    question
  end
end

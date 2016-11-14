FactoryGirl.define do
  factory :question do
    sequence(:title)  { |n| "Title #{n}" }
    sequence(:message) { |n| "Message #{n}"}
    sequence(:autor_name) {|n| "Autor_name #{n}"}
    date_creation "15.11.2016"
  end

  factory :answer do
    content "Lorem ipsum"
    sequence(:question_id) {|n| "Question_id #{n}"}
    sequence(:autor_name) {|n| "Autor_name #{n}"}
    date_creation "14.11.2016"
    question
  end
end

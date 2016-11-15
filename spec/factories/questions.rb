FactoryGirl.define do
  factory :question do
    sequence(:title)  { |n| "Title #{n}" }
    sequence(:message) { |n| "Message #{n}"}
    sequence(:autor_name) {|n| "Autor_name #{n}"}
  end
end

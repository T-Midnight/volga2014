FactoryGirl.define do
  factory :question do
    sequence(:title)  { |n| "Title #{n}" }
    sequence(:message) { |n| "Message #{n}"}
  end
end

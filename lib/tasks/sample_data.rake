namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.delete_all
    Question.delete_all
    Answer.delete_all

    User.create(name: "name",
               email: "email")

    6.times do |n|
      name = Faker::Name.name
      email = "example-#{n+1}@gmail.com"
      User.create!(name: name,
                  email: email)

    end
    users = User.all
    3.times do |n|
      users.each do |user|
        title = Faker::Name.title
        message = "message-#{n+1}"
        user.questions.create!(title: title, message: message)
      end
    end

    questions = Question.all
    5.times do |n|
      content = Faker::Lorem.sentence(5)
      questions.each { |question| question.answers.create!(content: content, user_id: question.user_id) }
    end
  end
end

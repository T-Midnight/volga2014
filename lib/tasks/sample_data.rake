namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Question.create(autor_name: "Example autor",
                 title: "example title",
                 message: "foobar")
    31.times do |n|
      title = "title-#{n+1}"
      autor_name  = Faker::Name.name
      message = "message-#{n+1}"
      Question.create!(title: title,
                   autor_name: autor_name,
                   message: message)
    end

    questions = Question.all
    15.times do |n|
      content = Faker::Lorem.sentence(5)
      autor_name = Faker::Name.name
      questions.each { |question| question.answers.create!(content: content, autor_name: autor_name) }
    end
  end
end

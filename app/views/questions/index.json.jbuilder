json.array!(@questions) do |question|
  json.extract! question, :title, :message, :autor_name, :date_creation
  json.url question_url(question, format: :json)
end
json.array!(@questions) do |question|
  json.extract! question, :title, :message
  json.url question_url(question, format: :json)
end

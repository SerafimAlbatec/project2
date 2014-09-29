json.array!(@questions) do |question|
  json.extract! question, :id, :name, :answer_number, :user_id, :poll_id
  json.url question_url(question, format: :json)
end

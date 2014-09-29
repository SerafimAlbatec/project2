json.array!(@polls) do |poll|
  json.extract! poll, :id, :name, :question_number
  json.url poll_url(poll, format: :json)
end

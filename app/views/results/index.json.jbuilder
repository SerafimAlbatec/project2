json.array!(@results) do |result|
  json.extract! result, :id, :user_id, :poll_id, :question_id, :answer_id
  json.url result_url(result, format: :json)
end

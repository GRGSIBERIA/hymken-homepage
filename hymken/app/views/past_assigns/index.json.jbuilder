json.array!(@past_assigns) do |past_assign|
  json.extract! past_assign, :id, :student_id, :year
  json.url past_assign_url(past_assign, format: :json)
end

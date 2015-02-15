json.array!(@now_assigns) do |now_assign|
  json.extract! now_assign, :id, :student_id
  json.url now_assign_url(now_assign, format: :json)
end

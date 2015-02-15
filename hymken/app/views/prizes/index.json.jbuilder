json.array!(@prizes) do |prize|
  json.extract! prize, :id, :past_assign_id, :name
  json.url prize_url(prize, format: :json)
end

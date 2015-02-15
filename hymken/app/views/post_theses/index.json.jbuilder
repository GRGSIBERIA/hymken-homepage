json.array!(@post_theses) do |post_thesis|
  json.extract! post_thesis, :id, :past_assign_id, :name, :quotation, :view_hash
  json.url post_thesis_url(post_thesis, format: :json)
end

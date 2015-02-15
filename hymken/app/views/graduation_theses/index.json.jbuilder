json.array!(@graduation_theses) do |graduation_thesis|
  json.extract! graduation_thesis, :id, :past_assign_id, :name, :view_hash
  json.url graduation_thesis_url(graduation_thesis, format: :json)
end

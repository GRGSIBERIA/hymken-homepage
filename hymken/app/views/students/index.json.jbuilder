json.array!(@students) do |student|
  json.extract! student, :id, :number, :name, :grade_id, :course_id
  json.url student_url(student, format: :json)
end

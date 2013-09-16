json.array!(@instructors) do |instructor|
  json.extract! instructor, :name, :proficiency, :rates
  json.url instructor_url(instructor, format: :json)
end
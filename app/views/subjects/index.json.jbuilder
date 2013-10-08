json.array!(@subjects) do |subject|
  json.extract! subject, :name, :desc, :load
  json.url subject_url(subject, format: :json)
end

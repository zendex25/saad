json.array!(@section_subjects) do |section_subject|
  json.extract! section_subject, :section_id, :subject_id
  json.url section_subject_url(section_subject, format: :json)
end

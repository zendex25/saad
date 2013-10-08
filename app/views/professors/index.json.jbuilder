json.array!(@professors) do |professor|
  json.extract! professor, :lastname, :firstname, :middleinitial, :status
  json.url professor_url(professor, format: :json)
end

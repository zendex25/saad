json.array!(@day_timeslots) do |day_timeslot|
  json.extract! day_timeslot, :day_id, :timeslot_id
  json.url day_timeslot_url(day_timeslot, format: :json)
end

json.array!(@timeslots) do |timeslot|
  json.extract! timeslot, :start, :finish
  json.url timeslot_url(timeslot, format: :json)
end

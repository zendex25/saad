json.array!(@schedules) do |schedule|
  json.extract! schedule, :day_timeslot_id, :section_subject_id
  json.url schedule_url(schedule, format: :json)
end

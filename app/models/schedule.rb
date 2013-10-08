class Schedule < ActiveRecord::Base
  belongs_to :day_timeslot
  belongs_to :section_subject
end

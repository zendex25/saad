class DayTimeslot < ActiveRecord::Base
  belongs_to :day
  belongs_to :timeslot

  has_many :schedules
  
end

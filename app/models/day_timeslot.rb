class DayTimeslot < ActiveRecord::Base
  belongs_to :day
  belongs_to :timeslot

  has_many :schedules

	validates :day_id, :timeslot_id, :presence => true

def jcon
  	[day.name, timeslot.timecon].join(' ')
  end
  
end

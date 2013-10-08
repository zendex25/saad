class Timeslot < ActiveRecord::Base

	has_many :day_timeslots

	def timecon
  		[start.to_s(:time), finish.to_s(:time)].join(' - ')
	end

end

class Day < ActiveRecord::Base
	has_many :day_timeslots

	validates :name, :desc, :presence => true
end

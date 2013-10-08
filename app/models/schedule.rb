class Schedule < ActiveRecord::Base
  belongs_to :day
  belongs_to :timeslot
  belongs_to :section
  belongs_to :subject
  belongs_to :professor
  belongs_to :room
end

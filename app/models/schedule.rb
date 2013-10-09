class Schedule < ActiveRecord::Base
  belongs_to :day_timeslot
  belongs_to :section_subject
  belongs_to :professor
  belongs_to :room

  default_scope :order => 'day_timeslot_id'

  validates :day_timeslot_id, :section_subject_id, :professor_id, :room_id, :presence => true

  validates :section_subject_id, :uniqueness => true

end

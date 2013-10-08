class SectionSubject < ActiveRecord::Base
  belongs_to :section
  belongs_to :subject

  has_many :schedules

end

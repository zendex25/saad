class SectionSubject < ActiveRecord::Base
  belongs_to :section
  belongs_to :subject

  has_many :schedules

  def jcon
  	[subject.name, section.seccon].join
  end

  validates :section_id, :subject_id, :presence => true

end

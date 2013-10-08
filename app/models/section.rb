class Section < ActiveRecord::Base
  belongs_to :department

  has_many :section_subjects

  def seccon
  	[name, department.name, yearlevel].join
  end

end

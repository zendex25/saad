class Section < ActiveRecord::Base
  belongs_to :department

  has_many :section_subjects

  def seccon
  	[name, department.name, yearlevel].join
  end

  validates :name, :department_id, :yearlevel, :presence => true

end

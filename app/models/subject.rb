class Subject < ActiveRecord::Base

	has_many :section_subjects

validates :name, :desc, :load, :presence => true

end

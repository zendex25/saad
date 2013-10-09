class Department < ActiveRecord::Base

	has_many :sections

	validates :name, :desc, :presence => true

end

class Room < ActiveRecord::Base

	validates :name, :desc, :presence => true
	
end

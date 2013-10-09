class Professor < ActiveRecord::Base

	def procon
		[lastname, firstname, middleinitial].join(', ')
	end

	validates  :lastname, :firstname, :middleinitial, :status, :presence => true
end

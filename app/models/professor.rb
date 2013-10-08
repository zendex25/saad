class Professor < ActiveRecord::Base

	def procon
		[lastname, firstname, middleinitial].join(', ')
	end
end

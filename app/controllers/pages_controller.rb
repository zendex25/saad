class PagesController < ApplicationController
	skip_before_filter :authorize
def about
	
end

def contact
	
end

def database
end

def system
		
		@days = Day.all
		
		@professors = Professor.all
		@rooms = Room.all
		@schedules = Schedule.all
		@sections = Section.all
		@subjects = Subject.all
		@timeslots = Timeslot.all

		
end

def new_user
	redirect_to users_url
	end


end
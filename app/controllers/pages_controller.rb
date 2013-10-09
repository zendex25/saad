class PagesController < ApplicationController
	skip_before_filter :authorize
def about
	
end

def contact
	
end




def system
		
		@days = Day.all
		
		@professors = Professor.all
		@rooms = Room.all
		@schedules = Schedule.all
		@section_subjects = SectionSubject.all
		@day_timeslots = DayTimeslot.all


		
		@sections = Section.all
		@subjects = Subject.all
		@timeslots = Timeslot.all
		
		
end

def new_user
	redirect_to users_url
	end


end
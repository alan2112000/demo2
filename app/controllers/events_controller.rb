class EventsController < ApplicationController
	before_filter :find_event, :only => [ :show,:edit,:update,:destroy] 	
	def index
		@events = Event.page(params[:page]).per(2)
	end

	def new
		@event = Event.new
	end


	def create 
		@event = Event.new(event_param)
		if @event.save
			flash[:notice] = "event was successfully created"
			redirect_to events_url
		else 
			render :action => :new 
		end
	end

	def show
		@page_title = @event.name
	end

	def edit 
		@event = Event.find(params[:id])
end

	def update 
		if @event.update_attributes(params[:event_param])
			flash[:notice] = "event was successfully update"
			redirect_to events_url(@event)
		else 
			render :action => :edit
		end
	end
	def destroy
		@event.destroy
		flash[:alert] = "event was successfully delete"
		redirect_to :action => :index
	end

	protected 

	def find_event
		@event = Event.find(params[:id])
end

	private 

	def event_param 
		params.require(:event).permit(:name , :description)
	end
end

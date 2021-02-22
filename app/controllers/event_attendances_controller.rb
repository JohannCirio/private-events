class EventAttendancesController < ApplicationController
  
  def new
    
  end
  
  def create
    @event = Event.find(params[:event_id])
    @user = current_user

    if @event.attendees.exists?(@user_id)
      redirect_to @event
    else
      redirect_to root_path
    end
  end
end

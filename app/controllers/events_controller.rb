require 'date'

class EventsController < ApplicationController
  def index
    @upcoming_events = Event.upcoming.all
    @past_events = Event.past.all
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @user = User.find(params[:user_id])
    @event = @user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  private
    def event_params
      params.require(:event).permit(:name, :place, :date)
    end
end

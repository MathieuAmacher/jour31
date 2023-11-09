class EventsController < ApplicationController
  
  
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(start_date: params['start_date'], duration: params['duration'], title: params['title'], description: params['description'], price: params['price'], location: params['location'])
    @event.avatar.attach(params[:avatar])
    redirect_to "events"
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update
    redirect_to "event_path"
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy
    redirect_to "/"
  end

  private

  def event_params
    params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location, :avatar)
  end
  

end

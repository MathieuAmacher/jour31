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
    event = Event.create(start_date: params['start_date'], duration: params['duration'], title: params['title'], description: params['description'], price: params['price'], location: params['location'])
    redirect_to "event_path"
  end

  def edit
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
end

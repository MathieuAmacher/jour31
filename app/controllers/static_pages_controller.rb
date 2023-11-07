class StaticPagesController < ApplicationController
  
  
  def index
    @event = Event.all
  end


end

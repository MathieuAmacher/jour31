class AvatarsController < ApplicationController

    def create
        @event = Event.find(params[:user_id])
        @Event.avatar.attach(params[:avatar])
        redirect_to(event_path(@event))
      end
    
    
    end
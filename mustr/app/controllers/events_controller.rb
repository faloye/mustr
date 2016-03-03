class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @user_options = User.all.map{|u| [ u.name, u.id ] }
  end
end

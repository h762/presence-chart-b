class SchedulesController < ApplicationController

  def index
    @user = Schedule.new
    @user = User.all
  end 
end
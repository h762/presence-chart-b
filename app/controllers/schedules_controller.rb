class SchedulesController < ApplicationController

  def index
    @user = Schedule.new
    @user = User.all
    @ownpage = Ownpage.find(@user.ids)
  end 
end
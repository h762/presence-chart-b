class SchedulesController < ApplicationController

  def index
    @user = Schedule.new
    @user = User.all
    # @ownpage = Ownpage.find(params[:user_id])
    # @ownpage = Ownpage.find(@user.ids)
  end 
end
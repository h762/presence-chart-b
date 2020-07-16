class OwnpagesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @ownpage = @user.ownpage
  end
end

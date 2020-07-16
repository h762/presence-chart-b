class OwnpagesController < ApplicationController

  def show
    @user = current_user.find(params[:id])
    @ownpage = current_user.ownpage
  end
end

class OwnpagesController < ApplicationController
  before_action :set_user, only: [:show, :edit, :upload]

  def show
    # @ownpage = @user.ownpage.find(params[:id])
    # @user = User.find(params[:user_id])
    # @name = @user.name
  end

  def edit
  end

  def upload
    
  end

  private

    def set_user
      @user = User.find(params[:user_id])
      @name = @user.name
    end
end

class OwnpagesController < ApplicationController
  # before_action :set_user, only: [:show]

  def show
    @ownpage = User.ownpage.find(params[:id])
    # user = User.find(params[:id])
    # @name = user.name
  end

  def edit
  end

  def upload
  end

  private

    def set_user
      @user = User.find(params[:id])
      @name = user.name
    end

end

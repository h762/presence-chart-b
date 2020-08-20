class OwnpagesController < ApplicationController
  before_action :set_user, only: [:new, :show, :edit, :upload]

  def new
    # binding.pry
    @ownpage = Ownpage.new
    # @ownpage = @user.ownpage.new
  end

  def create
    @ownpage = Ownpage.new(ownpage_params)
    binding.pry
    
  end
  
  def show
    # @ownpage = @user.ownpage.find(params[:id])
    # @user = User.find(params[:user_id])
    # @name = @user.name
  end

  def edit
    @ownpage = Ownpage.new
  end

  def upload
  end

  private

    def set_user
      @user = User.find(params[:user_id])
      @name = @user.name
    end

    def ownpage_params
      params.require(:ownpage).permit(:photo, :content).merge(user_id: current_user.id)
    end
end

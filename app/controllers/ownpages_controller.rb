class OwnpagesController < ApplicationController
  before_action :set_user, only: [:new, :show, :edit, :upload]

  def new
    # binding.pry
    @ownpage = Ownpage.new
    # @ownpage = @user.ownpage.new
  end

  def create
    @ownpage = Ownpage.new(ownpage_params)
  end
  
  def show
    # @ownpage = @user.ownpage.find(params[:id])
    # @user = User.find(params[:user_id])
    # @name = @user.name
  end

  def edit
    # @ownpage = Ownpage.new
    @ownpage = Ownpage.find(params[:user_id])
  end

  def update
    # binding.pry
    # @ownpage = Ownpage.new(ownpage_params)
    # @ownpage = Ownpage.find(params[:user_id])
    # if @ownpage.update(ownpage_params)
    #   redirect_to root_path, notice: "ok"
    # else
    #   redirect_to new_user_ownpage_path, notice: "no"
    # end
  end

  private

    def set_user
      @user = User.find(params[:user_id])
      @name = @user.name
    end

    def ownpage_params
      params.require(:ownpage).permit(:image, :content).merge(user_id: current_user.id)
    end
end

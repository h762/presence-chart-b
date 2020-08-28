class OwnpagesController < ApplicationController
  before_action :set_user, only: [:new, :show, :edit, :upload]
  # before_action :make_ownpage, only: [:show]

  def new
    # binding.pry
    @ownpage = Ownpage.new
    # @ownpage.image.new
    # @ownpage = @user.ownpage.new
  end

  def create
    @ownpage = Ownpage.new(ownpage_params)
  end
  
  def show
    if Ownpage.find(current_user.id).present?
      redirect_to new_user_ownpage_path
    end
    @ownpage = Ownpage.find(current_user.id)
    # @ownpage = @user.ownpage.find(params[:id])
    # @user = User.find(params[:user_id])
    # @name = @user.name
  end

  def edit
    # @ownpage = Ownpage.find(params[:user_id])
    @ownpage = Ownpage.find(current_user.id)
    # @ownpage.image.new
  end

  def update
    # binding.pry
    @ownpage = Ownpage.find(current_user.id)
    # @ownpage = Ownpage.find(params[:id])
    if @ownpage.update(ownpage_params)
      redirect_to root_path, notice: "ok"
    else
      redirect_to new_user_ownpage_path, notice: "no"
    end
  end

  private

    def set_user
      @user = User.find(params[:user_id])
      @name = @user.name
    end

    def ownpage_params
      params.require(:ownpage).permit(:image, :content).merge(user_id: current_user.id)
    end

    def make_ownpage
      redirect_to action: :new
    end
end

class OwnpagesController < ApplicationController
  before_action :set_user, only: [:new, :show, :edit, :upload]
  # before_action :make_ownpage, only: [:show]

  def new
    @ownpage = Ownpage.new
    # @ownpage.image.new
  end

  def create
    @ownpage = Ownpage.new(ownpage_params)
    if @ownpage.save
      redirect_to root_path, notice: "ok"
    else
      redirect_to root_path, notice: "no"
    end
  end
  
  def show
    # redirect_to default_page_user_ownpage_path
    # return
    # if Ownpage.find(params[:user_id]).blank
    #   redirect_to new_user_ownpage_path
    # end
    # @ownpage = Ownpage.find(current_user.id)
    # @user = User.find(params[:user_id])
    @ownpage = Ownpage.find(params[:user_id])
  end

  def edit
    @ownpage = Ownpage.find(current_user.id)
    # @ownpage.image.new
  end

  def update
    @ownpage = Ownpage.find(current_user.id)
    if @ownpage.update(ownpage_params)
      redirect_to root_path, notice: "ok"
    else
      redirect_to new_user_ownpage_path, notice: "no"
    end
  end

  def default_page
    user = User.find(params[:id])
    @name = user.name
    if Ownpage.find(params[:user_id]).presisted
      redirect_to user_ownpage_path
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

    # def make_ownpage
    #   redirect_to action: :new if Ownpage.find(current_user.id).nil?
    #   if @user.name == current_user.name
    #     redirect_to action: :new if Ownpage.find(current_user.id).nil?
    #   end
    # end
end

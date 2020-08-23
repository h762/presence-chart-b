class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_user

  def index
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.new
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def show
    user = User.find(params[:id])
    @name = user.name
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  # def set_user
  #   @user = User.find(params[:user_id])
  # end
end
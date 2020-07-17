class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def edit
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
    @name = current_user.name
    @ownpage = current_user.ownpage
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
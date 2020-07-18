class OwnpagesController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  private

    def set_user
      @user = Ownpage.find([:id])
    end
end

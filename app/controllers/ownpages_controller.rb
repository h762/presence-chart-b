class OwnpagesController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  private

    def set_user
      ownpage = User.find(params)
      @name = ownpage.name
      # binding.pry
    end

end

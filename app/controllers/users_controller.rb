class UsersController < ApplicationController

  def show
    if current_user
      @user = current_user
      @reviews = @user.reviews.last(5) || []
    else
      redirect_to root_url
    end
  end

end

class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    # add custom create logic here
    @user = User.new(registration_params)
    if @user.save
      current_user = @user
      session[:current_user_id] = @user.id
      redirect_to root_url, notice: 'User was succesfully created.'
    else
      render 'new'
    end
  end

  def update
    super
  end

  def registration_params
    params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
  end
end

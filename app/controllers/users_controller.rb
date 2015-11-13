class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to tasks_path, notice: "Welcome aboard, #{@user.firstname}!"
    else
      @user = User.new
      flash.now[:alert] = 'Signup failed'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def destroy
    logout
    redirect_to root_path, notice: "You've been logged out"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :crypted_password, :skills, :bio, :birth_date, :phone, :city, :profilr_image_url)
  end
end

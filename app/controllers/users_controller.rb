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
    @user = login(@user.first_name, @user.email, @user.password)
      redirect_back_or_to(:users, notice: "Welcome aboard, #{@user.first_name}!")
      # redirect_to root_url, notice: "Signup successful! Log in."
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
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :skills, :bio, :birth_date, :phone, :city, :profile_image_url)
  end
end

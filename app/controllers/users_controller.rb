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
      redirect_to root_url, notice: "Welcome aboard, #{@user.email}!"
    else
      @user = User.new
      flash.now[:alert] = 'Login failed'
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
end
